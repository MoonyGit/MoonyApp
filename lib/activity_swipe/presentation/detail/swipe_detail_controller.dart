import 'package:dartz/dartz.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source.dart';
import 'package:moony_app/activity_swipe/data/repository/swipe_repository.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item_detail.dart';
import 'package:moony_app/activity_swipe/domain/usecase/get_swipable_activity_detail.dart';
import 'package:moony_app/activity_swipe/domain/usecase/set_swipe_decision.dart';
import 'package:moony_app/activity_swipe/presentation/detail/swipe_detail_model.dart';
import 'package:moony_app/activity_swipe/resources/router.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/base/widgets/constrained_page.dart';
import 'package:moony_app/common/data/mock/mock_service.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/domain/connectivity/usecase/connectivity_use_case.dart';
import 'package:moony_app/common/domain/location/usecase/location_use_case.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/logger.dart';

/// Class to define Swipe detail page dependencies by dependency injection
class SwipeDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISwipeRemoteSource>(() => MockService(), fenix: true);
    Get.lazyPut<UserRemoteSource>(() => MockService(), fenix: true);
    Get.lazyPut(
        () => SwipeRepository(
            Get.find(), Get.find(), Get.find()),
        fenix: true);
    Get.lazyPut(() => GetSwipeItemDetailUseCase(Get.find<SwipeRepository>()),
        fenix: true);
    Get.lazyPut(() => SetSwipeDecisionUseCase(Get.find<SwipeRepository>()),
        fenix: true);
    Get.lazyPut(
        () => SwipeDetailController(<Constraint>[
              NoInternetConstraint(Get.find<IsConnectedUseCase>().call()),
              NoLocationConstraint(
                  Get.find<IsLocationActivatedUseCase>().call(),)
            ], Get.find<GetSwipeItemDetailUseCase>(),
                Get.find<SetSwipeDecisionUseCase>()),
        fenix: true);
  }
}

/// ViewModel detail controller
class SwipeDetailController extends ConstrainedController {
  /// Constructor
  SwipeDetailController(List<Constraint> constraints,
      this._getSwipeItemDetailUseCase, this._swipeDecisionUseCase)
      : super(constraints) {
    Get.parameters[Router.swipeDetailParameterName]?.let((String swipeItemId) =>
            _getSwipeItemDetailUseCase(input: swipeItemId)
                .then((Either<Failure, SwipeItemDetail> value) {
              Logger.d("SwipeDetailController Im here ! $value");
              return value.fold(
                  (Failure failure) => null,
                  (SwipeItemDetail detail) =>
                      detailModel.value = detail.toUi());
            })) ??
        Get.snackbar(AppStrings.genericFailure, AppStrings.genericFailure);
  }

  /// usecase to retrieve swipe detail
  final AsyncParamUseCase<String, Either<Failure, SwipeItemDetail>>
      _getSwipeItemDetailUseCase;

  /// usecase to set user swipe decision
  final AsyncParamUseCase<SetSwipeDecisionParam, Failure?>
      _swipeDecisionUseCase;

  /// Data to expose the the swipe detail view
  final Rxn<SwipeDetailModel> detailModel = Rxn<SwipeDetailModel>();

}
