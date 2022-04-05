import 'package:flutter/material.dart' hide Router;
import 'package:get/get.dart';
import 'package:kt_dart/kt.dart';
import 'package:moony_app/activity_creation/data/local/activity_creation_local_source.dart';
import 'package:moony_app/activity_creation/data/local/activity_creation_local_source_impl.dart';
import 'package:moony_app/activity_creation/data/remote/activity_creation_remote_source.dart';
import 'package:moony_app/activity_creation/data/remote/activity_creation_remote_source_impl.dart';
import 'package:moony_app/activity_creation/data/repository/activity_creation_repository_impl.dart';
import 'package:moony_app/activity_creation/domain/activity_creation_failure.dart';
import 'package:moony_app/activity_creation/domain/repository/activity_creation_repository.dart';
import 'package:moony_app/activity_creation/domain/usecase/activity_creation_usecase.dart';
import 'package:moony_app/activity_creation/presentation/budget/activity_budget_widget.dart';
import 'package:moony_app/activity_creation/presentation/description/activity_description_page.dart';
import 'package:moony_app/activity_creation/presentation/participants/activity_participants_filter_widget.dart';
import 'package:moony_app/activity_creation/presentation/participants/activity_participants_number_widget.dart';
import 'package:moony_app/activity_creation/presentation/type/activity_type_widget.dart';
import 'package:moony_app/activity_creation/resources/strings.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/data/mock/mock_service.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage_service.dart';
import 'package:moony_app/common/presentation/validation_interactor.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/util/collection_ext.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/flavors.dart';

/// Class to define LoginPage dependencies by dependency injection
class ActivityCreationBinding extends Bindings {
  @override
  void dependencies() {
    const String activityCreationLocalStorageTag =
        "activityCreationLocalStorageTag";

    Get.lazyPut<ILocalStorage>(
      () => LocalStorageService(activityCreationLocalStorageTag),
      fenix: true,
      tag: activityCreationLocalStorageTag,
    );

    Get.lazyPut<IActivityCreationLocalSource>(
      () => ActivityCreationLocalSourceImpl(
          Get.find(tag: activityCreationLocalStorageTag)),
      fenix: true,
    );

    switch (F.appFlavor) {
      case Flavor.MOCK:
        {
          Get.lazyPut<IActivityCreationRemoteSource>(
            () => Get.find<MockService>(),
            fenix: true,
          );
        }
        break;
      default:
        {
          Get.lazyPut<IActivityCreationRemoteSource>(
            () => const ActivityCreationRemoteSourceImpl(),
            fenix: true,
          );
        }
    }

    Get.lazyPut(
      () => ActivityCreationRepositoryImpl(Get.find(), Get.find(), Get.find()),
      fenix: true,
    );
    Get.lazyPut<IActivityCreatable>(
      () => Get.find<ActivityCreationRepositoryImpl>(),
      fenix: true,
    );
    Get.lazyPut<IActivityFieldsSavable>(
      () => Get.find<ActivityCreationRepositoryImpl>(),
      fenix: true,
    );

    Get.lazyPut<SaveActivityDescriptionUseCase>(
      () => SaveActivityDescriptionUseCase(Get.find()),
      fenix: true,
    );

    Get.lazyPut<SaveActivityBudgetUseCase>(
      () => SaveActivityBudgetUseCase(Get.find()),
      fenix: true,
    );

    Get.lazyPut<SaveActivityCategoryUseCase>(
      () => SaveActivityCategoryUseCase(Get.find()),
      fenix: true,
    );

    Get.lazyPut<SaveActivityParticipantNumberUseCase>(
      () => SaveActivityParticipantNumberUseCase(Get.find()),
      fenix: true,
    );

    Get.lazyPut<SaveActivityParticipantFilterUseCase>(
      () => SaveActivityParticipantFilterUseCase(Get.find()),
      fenix: true,
    );

    Get.lazyPut(
      () => CreateActivityFromLocalUseCase(Get.find()),
      fenix: true,
    );

    Get.lazyPut(
      () => ActivityTypeController(Get.find<SaveActivityCategoryUseCase>()),
    );
    Get.lazyPut(
      () => ActivityBudgetController(Get.find<SaveActivityBudgetUseCase>()),
    );
    Get.lazyPut(
      () => ActivityParticipantsNumberController(
        Get.find<SaveActivityParticipantNumberUseCase>(),
      ),
    );
    Get.lazyPut(
      () => ActivityParticipantsFilterController(
        Get.find<SaveActivityParticipantFilterUseCase>(),
      ),
    );
    Get.lazyPut(
      () => ActivityDescriptionController(
        Get.find<SaveActivityDescriptionUseCase>(),
      ),
    );

    final Map<Widget, ValidationInteractor> _pages =
        <Widget, ValidationInteractor>{
      ActivityTypeWidget(): Get.find<ActivityTypeController>(),
      ActivityBudgetWidget(): Get.find<ActivityBudgetController>(),
      ActivityParticipantsNumberWidget():
          Get.find<ActivityParticipantsNumberController>(),
      ActivityParticipantsFilterWidget():
          Get.find<ActivityParticipantsFilterController>(),
      ActivityDescriptionWidget(): Get.find<ActivityDescriptionController>(),
    };
    Get.lazyPut(() => ActivityCreationController(
        _pages, Get.find<CreateActivityFromLocalUseCase>()));
  }
}

/// The login viewModel of login page
class ActivityCreationController extends GetxController {
  /// Constructor
  ActivityCreationController(this.pages, this._createFromLocal) {
    pageController.addListener(() {
      final int? currentPageIndex = pageController.page?.toInt();

      // set new enabled state on next button
      currentPageIndex?.let((int index) {
        pages.entries.elementAt(index).value.getValidatedInput().value
            ? _enableNextButton()
            : _disableNextButton();
      });

      // if is last page
      if (currentPageIndex == pages.length - 1) {
        nextButtonText.value = AppStrings.finish;
      } else {
        nextButtonText.value = AppStrings.goToNext;
      }

      // if is first page
      if (currentPageIndex == 0) {
        isFirstPage.value = true;
      } else {
        isFirstPage.value = false;
      }
    });
    pages.forEachIndexed((int index, Widget key, ValidationInteractor value) {
      value.getValidatedInput().listen((bool event) {
        if (index == pageController.page?.toInt()) {
          event ? _enableNextButton() : _disableNextButton();
        }
      });
    });
  }

  /// Page list
  final Map<Widget, ValidationInteractor> pages;

  final AsyncUseCase<CreatingActivityFailure?> _createFromLocal;

  /// Page animation duration
  Duration pageAnimation = const Duration(milliseconds: 300);

  /// Next button reactive text
  RxString nextButtonText = RxString(AppStrings.goToNext);

  /// Next button reactive enabled state
  RxBool nextButtonEnabled = RxBool(false);

  /// is first page reactive state
  RxBool isFirstPage = RxBool(true);

  /// Handle page controller at viewModel level to dispose it in onClose
  final PageController pageController = PageController();

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  /// exit activity creation
  void exitCreation() {
    Get.back();
  }

  /// Return to the previous page if possible
  void previousPage() {
    if (pageController.page?.round() != pageController.initialPage) {
      pageController.previousPage(
        curve: Curves.linear,
        duration: pageAnimation,
      );
    }
  }

  /// Go to the next page if available
  Future<void> nextPage() async {
    if (pageController.page?.round() == pages.length - 1) {
      await _onFinishButtonPressed();
    } else {
      pageController.nextPage(
        curve: Curves.linear,
        duration: pageAnimation,
      );
    }
  }

  /// page validator enable next button
  void _enableNextButton() {
    nextButtonEnabled.value = true;
  }

  /// page validator disable next button
  void _disableNextButton() {
    nextButtonEnabled.value = false;
  }

  Future<void> _onFinishButtonPressed() async {
    Get.defaultDialog(
      title: activityCreationLoaderTitle.translate(),
      middleText: activityCreationLoaderSubTitle.translate(),
      content: const CircularProgressIndicator(),
    );
    final CreatingActivityFailure? failure = await _createFromLocal();
    if (failure != null) {
      if (Get.isDialogOpen == true) {
        Get.back(closeOverlays: true);
      }
      Get.snackbar(
        activityCreationLoaderErrorTitle.translate(),
        failure.message?.translate() ?? AppStrings.genericFailure.translate(),
      );
    } else {
      if (Get.isDialogOpen == true) {
        Get.back(closeOverlays: true);
      }
      Logger.d("Routing back");
      exitCreation();
    }
  }
}
