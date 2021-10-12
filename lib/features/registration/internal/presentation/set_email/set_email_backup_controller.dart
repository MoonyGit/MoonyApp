import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/email.dart';
import 'package:moony_app/features/registration/internal/usecase/save_user_infos.dart';

/// Class to define SetEmailBackupPage dependencies by dependency injection
class SetEmailBackupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaveUserEmailUseCase>(() => SaveUserEmailUseCase(Get.find()),
        fenix: true);
    Get.lazyPut(
        () => SetEmailBackupController(Get.find<SaveUserEmailUseCase>()));
  }
}

/// The viewModel of SetEmailBackupPage
class SetEmailBackupController extends GetxController {
  /// Constructor
  SetEmailBackupController(this._registrationUseCase);

  final AsyncParamUseCase<EmailAddress, void> _registrationUseCase;

  /// email address text controller
  TextEditingController emailController = TextEditingController();

  /// Reactive email address string
  RxnString emailAddress = RxnString();

  /// email form validator
  String? emailValidator(String? text) => text?.let((String it) =>
      EmailAddress(input: it).value.fold((EmailAddressFailure failure) {
        emailAddress.value = null;
        return failure.message;
      }, (String address) {
        emailAddress.value = address;
        _registrationUseCase(input: EmailAddress(input: address));
        return null;
      }));
}
