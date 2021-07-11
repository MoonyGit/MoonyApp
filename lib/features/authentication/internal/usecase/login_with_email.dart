import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';
import 'package:moony_app/features/authentication/internal/domain/email.dart';
import 'package:moony_app/features/authentication/internal/domain/password.dart';

/// The authentication uses cases
class EmailAuthUseCase {
  /// Constructor
  EmailAuthUseCase(this._authRepo);

  final IEmailAuthRepository _authRepo;

  /// try sign up user with email account
  /// TODO: remove if not needed
  Future<AuthenticationState> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) {
    return EmailAddress(input: emailAddress).value.fold(
        (EmailAddressFailure emailAddressFailure) =>
            Future<AuthenticationState>(() => AuthenticationFailure(
                status: BadCredentials(message: emailAddressFailure.message))),
        (String email) => Password(input: password).value.fold(
            (PasswordFailure passwordFailure) => Future<AuthenticationState>(
                () => AuthenticationFailure(
                    status: BadCredentials(message: passwordFailure.message))),
            (String password) => _authRepo.registerWithEmailAndPassword(
                emailAddress: emailAddress, password: password)));
  }

  /// try sign in with email account
  Future<AuthenticationState> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) {
    return EmailAddress(input: emailAddress).value.fold(
        (EmailAddressFailure emailAddressFailure) =>
            Future<AuthenticationState>(() => AuthenticationFailure(
                status: BadCredentials(message: emailAddressFailure.message))),
        (String email) => Password(input: password).value.fold(
            (PasswordFailure passwordFailure) => Future<AuthenticationState>(
                () => AuthenticationFailure(
                    status: BadCredentials(message: passwordFailure.message))),
            (String password) => _authRepo.signInWithEmailAndPassword(
                emailAddress: emailAddress, password: password)));
  }
}
