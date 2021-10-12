import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/user/email.dart';
import 'package:moony_app/common/domain/user/password.dart';
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

part 'login_with_email.freezed.dart';

/// Parameter data class for SignInWithEmailUseCase
@freezed
class SignInWithEmailUseCaseParams with _$SignInWithEmailUseCaseParams {
  /// Constructor
  factory SignInWithEmailUseCaseParams(
      {required EmailAddress address,
      required Password password}) = _SignInWithEmailUseCaseParams;
}

/// The authentication uses cases
class SignInWithEmailUseCase extends AsyncParamUseCase<
    SignInWithEmailUseCaseParams, AuthenticationState> {
  /// Constructor
  SignInWithEmailUseCase(this._authRepo);

  final IEmailAuthRepository _authRepo;

  @override
  Future<AuthenticationState> call(
          {required SignInWithEmailUseCaseParams input}) =>
      _authRepo.signInWithEmailAndPassword(
          emailAddress: input.address, password: input.password);
}

/// The authentication uses cases
class RegisterWithEmailUseCase extends AsyncParamUseCase<
    SignInWithEmailUseCaseParams, AuthenticationState> {
  /// Constructor
  RegisterWithEmailUseCase(this._authRepo);

  final IEmailAuthRepository _authRepo;

  @override
  Future<AuthenticationState> call(
          {required SignInWithEmailUseCaseParams input}) =>
      _authRepo.registerWithEmailAndPassword(
          emailAddress: input.address, password: input.password);
}
