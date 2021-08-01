import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

import 'authentication_data_source.dart';

/// Authentication repository
class AuthenticationRepositoryImpl
    implements
        ISignOutRepository,
        IAuthStateRepository,
        IPhoneAuthRepository,
        IEmailAuthRepository,
        IFacebookAuthRepository,
        IAppleAuthRepository,
        IGoogleAuthRepository {
  /// Constructor
  AuthenticationRepositoryImpl(this._authDataSource);

  final AuthDataSource _authDataSource;

  @override
  Future<bool> isAuthenticated() {
    return _authDataSource
        .getSignedInUser()
        .then((AuthUserDataSourceModel? value) => value != null);
  }

  @override
  Stream<bool> isAuthenticatedStream() {
    return _authDataSource
        .getUserAuthStateChanges()
        .map((AuthUserDataSourceModel? event) => event != null);
  }

  @override
  Future<AuthenticationState> registerWithEmailAndPassword(
      {required String emailAddress, required String password}) {
    return _authDataSource
        .registerWithEmailAndPassword(
            emailAddress: emailAddress, password: password)
        .then((Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel> value) =>
            value.fold(
                (AuthFailureDataSourceEvent failure) => AuthenticationFailure(
                    status: failure.maybeWhen(
                        credentialsAlreadyUsed: (String? message) =>
                            const CredentialsAlreadyUsed(),
                        serverError: (String? message) =>
                            ServerError(message: message),
                        badCredentials: (String? message) =>
                            BadCredentials(message: message),
                        unknown: (String? message) => Unknown(message: message),
                        cancelled: (String? message) => const Cancelled(),
                        orElse: () => const Unknown().also((Unknown it) =>
                            Logger.e("Unexpected failure: $failure")))),
                (AuthUserDataSourceModel data) =>
                    const Authenticated(status: SignedIn())));
  }

  @override
  void signInWithPhoneNumber({required String phoneNumber}) {
    _authDataSource.signInWithPhoneNumber(phoneNumber: phoneNumber);
  }

  @override
  Stream<AuthenticationState> getPhoneNumberAuthenticationState() {
    return _authDataSource.getPhoneNumberAuthenticationState().map(
        (VerifyPhoneStateDataSourceEvent value) => value.when(
            autoLogin: (String smsCode) =>
                AuthenticationLoading(status: PhoneAutoLogin(smsCode: smsCode)),
            error: (String? message) =>
                AuthenticationFailure(status: BadCredentials(message: message)),
            otpSent: () => const AuthenticationLoading(status: OtpSent())));
  }

  @override
  Future<AuthenticationState> verifyPhoneOtp({required String code}) {
    return _authDataSource.verifyPhoneOtp(code: code).then(
        (Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel> value) =>
            value.fold(
                (AuthFailureDataSourceEvent failure) => AuthenticationFailure(
                    status: failure.maybeWhen(
                        serverError: (String? message) =>
                            ServerError(message: message),
                        badOtp: (String? message) => BadOtp(message: message),
                        otpExpired: (String? message) =>
                            BadOtp(message: message),
                        unknown: (String? message) => Unknown(message: message),
                        cancelled: (String? message) => const Cancelled(),
                        orElse: () => const Unknown().also((Unknown it) =>
                            Logger.e("Unexpected failure: $failure")))),
                (AuthUserDataSourceModel data) =>
                    const Authenticated(status: SignedIn())));
  }

  @override
  Future<AuthenticationState> signInWithEmailAndPassword(
      {required String emailAddress, required String password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<AuthenticationState> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<AuthenticationState> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<AuthenticationState> signInWithApple() {
    // TODO: implement signInWithApple
    throw UnimplementedError();
  }

  @override
  Future<AuthenticationState> signOut() {
    return _authDataSource
        .signOut()
        .then((void _) => const UnAuthenticated(status: SignedOut()));
  }
}
