import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/authentication/domain/model/authentication_state.dart';
import 'package:moony_app/authentication/domain/repository/auth_repositories_facade.dart';
import 'package:moony_app/common/domain/user/model/email.dart';
import 'package:moony_app/common/domain/user/model/password.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';
import 'package:moony_app/common/util/logger.dart';

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
      {required EmailAddress emailAddress, required Password password}) {
    return _authDataSource
        .registerWithEmailAndPassword(
            emailAddress: emailAddress.getOrCrash(),
            password: password.getOrCrash())
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
  Future<void> signInWithPhoneNumber({required PhoneNumber phoneNumber}) async {
    _authDataSource.signInWithPhoneNumber(
        phoneNumber: phoneNumber.getOrCrash());
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
  Future<AuthenticationState> verifyPhoneOtp({required SmsOtp code}) {
    return _authDataSource.verifyPhoneOtp(code: code.getOrCrash()).then(
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
      {required EmailAddress emailAddress, required Password password}) {
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
