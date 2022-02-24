import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source_impl.dart';
import 'package:moony_app/activity_swipe/data/repository/swipe_repository.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item.dart';
import 'package:moony_app/activity_swipe/domain/usecase/get_swipable_activity_list.dart';
import 'package:moony_app/activity_swipe/domain/usecase/set_swipe_decision.dart';
import 'package:moony_app/activity_swipe/resources/router.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/constrained_page.dart';
import 'package:moony_app/common/data/mock/mock_service.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source_impl.dart';
import 'package:moony_app/common/domain/connectivity/usecase/connectivity_use_case.dart';
import 'package:moony_app/common/domain/location/usecase/geolocation_use_case.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/common/util/string_dynamic_interpolation.dart';
import 'package:moony_app/flavors.dart';
import 'package:swipable_stack/swipable_stack.dart';

import 'swipe_card_model.dart';

/// Class to define Swipe page dependencies by dependency injection
class SwipeBinding extends Bindings {
  @override
  void dependencies() {
    switch (F.appFlavor) {
      case Flavor.MOCK:
        {
          Get.lazyPut<ISwipeRemoteSource>(() => Get.find<MockService>(),
              fenix: true);
          Get.lazyPut<UserRemoteSource>(() => Get.find<MockService>(),
              fenix: true);
          break;
        }
      default:
        {
          Get.lazyPut<ISwipeRemoteSource>(() => SwipeRemoteSource(Get.find()),
              fenix: true);
          Get.lazyPut<UserRemoteSource>(() => UserRemoteSourceImpl(Get.find()),
              fenix: true);
        }
    }
    Get.lazyPut(
        () => SwipeRepository(
              Get.find(),
              Get.find(),
              Get.find(),
            ),
        fenix: true);
    Get.lazyPut(() => GetSwipeItemListUseCase(Get.find<SwipeRepository>()),
        fenix: true);
    Get.lazyPut(() => SetSwipeDecisionUseCase(Get.find<SwipeRepository>()),
        fenix: true);
    Get.lazyPut(
        () => SwipeController(<Constraint>[
              NoInternetConstraint(Get.find<IsConnectedUseCase>().call()),
              NoLocationConstraint(
                  Get.find<GeolocationActivatedUseCase>().call())
            ], Get.find<GetSwipeItemListUseCase>(),
                Get.find<SetSwipeDecisionUseCase>()),
        fenix: true);
  }
}

/// The swipe viewModel of swipe page
class SwipeController extends ConstrainedController {
  /// Constructor
  SwipeController(List<Constraint> constraints, this._swipeUseCase,
      this._swipeDecisionUseCase)
      : super(constraints) {
    _loadMoreItems();
  }

  /// Offset before the end of the list used to load new items
  static const int swipeItemOffset = 4;

  final AsyncUseCase<Either<Failure, List<SwipeItem>>> _swipeUseCase;
  final AsyncParamUseCase<SetSwipeDecisionParam, Failure?>
      _swipeDecisionUseCase;

  /// controller of swipable widget
  SwipableStackController swipableStackController = SwipableStackController();

  /// Rx bool to notify view of front or back card
  RxBool isFontCard = RxBool(true);

  /// Rx data map to notify view when news swipe items
  /// and their associated controller user image has been added
  final RxMap<PageController, SwipeCardModel> swipeCardList =
      RxMap<PageController, SwipeCardModel>();

  @override
  void onClose() {
    super.onClose();
    swipableStackController.dispose();

    for (final MapEntry<PageController, SwipeCardModel> element
        in swipeCardList.entries) {
      element.key.dispose();
    }
  }

  /// Method to load more swipe items
  Future<void> _loadMoreItems() async {
    (await _swipeUseCase()).fold(
        (Failure failure) => null,
        (List<SwipeItem> result) => swipeCardList
          ..addEntries(result
              .map((SwipeItem item) => MapEntry<PageController, SwipeCardModel>(
                  PageController(), item.toUi()))
              .toList())
          ..refresh());
  }

  /// Callback when user tap on dot indicators to switch user image
  void onDotClicked({required int cardIndex, required int cardPageIndex}) {
    swipeCardList.entries.elementAt(cardIndex).key.let((PageController it) {
      if (it.page != cardPageIndex) {
        it.jumpToPage(cardPageIndex);
      }
    });
  }

  /// Callback when user tap on info area of the card
  void onInfoCardTap({required int cardIndex}) {
    Logger.d("on info card tapped !");
    final String route = Router.swipeDetailTemplate.format(
        <String>[swipeCardList.entries.elementAt(cardIndex).value.activityId]);
    Logger.d(route);
    Get.toNamed(route);
  }

  /// Method to flip the card
  void flipCard({required int cardIndex}) {
    isFontCard.value = !isFontCard.value;
  }

  /// Callback when user tap on top card
  void onTopCardTap({required int cardIndex, required bool isRight}) {
    swipeCardList.entries.elementAt(cardIndex).key.let((PageController it) {
      if (isRight) {
        final int lastPageIndex = swipeCardList.entries
                .elementAt(cardIndex)
                .value
                .userImagesWithInfo
                .length -
            1;
        if (it.page != lastPageIndex) {
          it.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear);
        }
      } else {
        if (it.page != 0) {
          it.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear);
        }
      }
    });
  }

  /// Callback when swipe complete
  void onSwipeCompleted(
      {required int cardIndex, required SwipeDirection direction}) {
    Logger.d('$cardIndex, $direction');

    direction.toDomain()?.let((Decision it) => _swipeDecisionUseCase(
        input: SetSwipeDecisionParam(
            activityId:
                swipeCardList.entries.elementAt(cardIndex).value.activityId,
            decision: it)));

    if (cardIndex == swipeCardList.entries.length - (swipeItemOffset + 1)) {
      Logger.d("Load more items");
      _loadMoreItems();
    }
  }
}

/// Swipe decision mapper
extension SwipeDecisionMapper on SwipeDirection {
  /// Mapper method
  Decision? toDomain() {
    switch (this) {
      case SwipeDirection.left:
        return Decision.nope;
      case SwipeDirection.right:
        return Decision.like;
      case SwipeDirection.up:
        return Decision.superlike;
      default:
        return null;
    }
  }
}
