import 'package:flutter/material.dart' hide Router;
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/home/resources/router.dart' as home_router;
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/model/user.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/registration/domain/usecase/registration_use_case.dart';
import 'package:moony_app/registration/domain/usecase/save_user_infos.dart';
import 'package:moony_app/registration/resources/strings.dart';

import 'set_birthdate/set_birthdate_widget.dart';
import 'set_gender/set_gender_widget.dart';
import 'set_name/set_name_widget.dart';
import 'set_photo/set_photo_widget.dart';
import 'set_relation_state/set_relation_state_widget.dart';

/// Class to define UserRegistrationPage dependencies by dependency injection
class RegistrationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterUser>(() => RegisterUser(Get.find()), fenix: true);

    Get.lazyPut<SaveUserNameUseCase>(() => SaveUserNameUseCase(Get.find()),
        fenix: true);

    Get.lazyPut<SaveUserBirthdateUseCase>(
        () => SaveUserBirthdateUseCase(Get.find()),
        fenix: true);

    Get.lazyPut<SaveUserPhoneUseCase>(() => SaveUserPhoneUseCase(Get.find()),
        fenix: true);

    Get.lazyPut<SaveUserGenderUseCase>(() => SaveUserGenderUseCase(Get.find()),
        fenix: true);

    Get.lazyPut<SaveUserRelationStateUseCase>(
        () => SaveUserRelationStateUseCase(Get.find()),
        fenix: true);

    Get.lazyPut<SaveUserSecondaryPhotoListStateUseCase>(
        () => SaveUserSecondaryPhotoListStateUseCase(Get.find()),
        fenix: true);

    Get.lazyPut<SaveUserProfilePhotoStateUseCase>(
        () => SaveUserProfilePhotoStateUseCase(Get.find()),
        fenix: true);

    Get.lazyPut(() => RegistrationController(Get.find<RegisterUser>()));
    Get.lazyPut(
        () => SetNameController(Get.find(), Get.find<SaveUserNameUseCase>()));
    Get.lazyPut(() => SetBirthdateController(
        Get.find(), Get.find<SaveUserBirthdateUseCase>()));
    Get.lazyPut(() => SetPhotoController(
        Get.find(),
        Get.find<SaveUserSecondaryPhotoListStateUseCase>(),
        Get.find<SaveUserProfilePhotoStateUseCase>()));
    Get.lazyPut(() => SetRelationStateController(
        Get.find(), Get.find<SaveUserRelationStateUseCase>()));
    Get.lazyPut(() =>
        SetGenderController(Get.find(), Get.find<SaveUserGenderUseCase>()));
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

  final AsyncUseCase<ErrorCreatingUserFailure?> _registrationUseCase;

  /// Page animation duration
  Duration pageAnimation = const Duration(milliseconds: 300);

  /// Handle page controller at viewModel level to dispose it in onClose
  final PageController pageController = PageController();

  /// Page list
  final List<Widget> pages = <Widget>[
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
      await _onFinishButtonPressed();
    } else {
      pageController.nextPage(
        curve: Curves.linear,
        duration: pageAnimation,
      );
    }
  }

  Future<void> _onFinishButtonPressed() async {
    Get.defaultDialog(
        title: AppStrings.translate(message: settingAccountTitle),
        middleText: AppStrings.translate(message: settingAccountMessage),
        content: const CircularProgressIndicator());
    final ErrorCreatingUserFailure? failure = await _registrationUseCase();
    if (failure != null) {
      if (Get.isDialogOpen == true) {
        Get.back(closeOverlays: true);
      }
      Get.snackbar(
          AppStrings.translate(message: settingAccountErrorTitle),
          AppStrings.translate(
              message: failure.message ?? AppStrings.genericFailure));
    } else {
      if (Get.isDialogOpen == true) {
        Get.back(closeOverlays: true);
      }
      Logger.d("Routing to Planet");
      Get.offNamed(home_router.Router.home);
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
