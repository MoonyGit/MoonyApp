import 'package:flutter/material.dart' hide Router;
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/domain/user/user.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/features/activity/router/router.dart';
import 'package:moony_app/features/registration/internal/usecase/registration_use_case.dart';
import 'package:moony_app/features/registration/resources/strings.dart';
import 'set_birthdate/set_birthdate_widget.dart';
import 'set_gender/set_gender_widget.dart';
import 'set_name/set_name_widget.dart';
import 'set_photo/set_photo_widget.dart';
import 'set_relation_state/set_relation_state_widget.dart';

/// Class to define UserRegistrationPage dependencies by dependency injection
class RegistrationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController(Get.find()));
    Get.lazyPut(() => SetNameController(Get.find(), Get.find()));
    Get.lazyPut(() => SetBirthdateController(Get.find(), Get.find()));
    Get.lazyPut(() => SetPhotoController(Get.find(), Get.find()));
    Get.lazyPut(() => SetRelationStateController(Get.find(), Get.find()));
    Get.lazyPut(() => SetGenderController(Get.find(), Get.find()));
  }
}

/// The RegistrationController viewModel of login page
class RegistrationController extends GetxController {
  /// public constructor
  RegistrationController(this._registrationUseCase) {
    pageController.addListener(() {
      final int? currentPageIndex = pageController.page?.toInt();

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

      currentPageIndex?.let((int index) {
        currentPage.value = pages[index];
      });
    });
  }

  final RegistrationUseCase _registrationUseCase;

  /// Page animation duration
  Duration pageAnimation = const Duration(milliseconds: 300);

  /// Handle page controller at viewModel level to dispose it in onClose
  final PageController pageController = PageController();

  /// Page list
  final List<Widget> pages = [
    SetNameWidget(),
    SetBirthDateWidget(),
    SetGenderWidget(),
    SetRelationStateWidget(),
    SetPhotoWidget()
  ];

  /// Next button reactive text
  RxString nextButtonText = RxString(AppStrings.goToNext);

  /// Next button reactive enabled state
  RxBool nextButtonEnabled = RxBool(false);

  /// is first page reactive state
  RxBool isFirstPage = RxBool(true);

  /// current page reactive type
  Rxn<Widget> currentPage = Rxn<Widget>();

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  /// user request to go to previous page
  void pageBackRequested() {
    if (pageController.page?.round() != pageController.initialPage) {
      pageController.previousPage(
        curve: Curves.linear,
        duration: pageAnimation,
      );
    }
  }

  /// user request to go to next page or finish
  Future<void> onNextButtonPressed() async {
    if (pageController.page?.round() == pages.length - 1) {
      Get.defaultDialog(
          title: AppStrings.translate(message: settingAccountTitle),
          middleText: AppStrings.translate(message: settingAccountMessage),
          content: const CircularProgressIndicator());
      (await _registrationUseCase.createUserFromLocal()).fold(
          (ErrorCreatingUserFailure failure) {
        if (Get.isDialogOpen == true) {
          Get.back(closeOverlays: true);
        }
        Get.snackbar(AppStrings.translate(message: settingAccountErrorTitle),
            AppStrings.translate(message: failure.message));
      }, (bool success) {
        if (Get.isDialogOpen == true) {
          Get.back(closeOverlays: true);
        }
        Get.offNamed(Router.home);
      });
    } else {
      pageController.nextPage(
        curve: Curves.linear,
        duration: pageAnimation,
      );
    }
  }

  /// page validator enable next button
  void enableNextButton() {
    nextButtonEnabled.value = true;
  }

  /// page validator disable next button
  void disableNextButton() {
    nextButtonEnabled.value = false;
  }
}
