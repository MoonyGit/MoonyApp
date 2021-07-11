import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/features/authentication/internal/domain/auth_repositories_facade.dart';
import 'package:moony_app/features/authentication/internal/domain/authentication_state.dart';

import 'authentication_data_source.dart';

/// Authentication repository
class AuthenticationRepositoryImpl
    implements
        IAuthStateRepository,
        IPhoneAuthRepository {
  /// Constructor
  AuthenticationRepositoryImpl(this._authDataSource);

  final AuthDataSource _authDataSource;

  @override
  Future<bool> isAuthenticated() {
    return _authDataSource
        .getSignedInUser()
        .then((UserDataSource? value) => value != null);
  }

  @override
  Stream<bool> isAuthenticatedStream() {
    return _authDataSource
        .getUserAuthStateChanges()
        .map((UserDataSource? event) => event != null);
  }

  @override
  Future<AuthenticationState> signInWithPhoneNumber(
      {required String phoneNumber}) {
    return _authDataSource.signInWithPhoneNumber(phoneNumber: phoneNumber).then(
        (VerifyPhoneStateDataSource value) => value.when(
            autoLogin: (String smsCode) =>
                AuthenticationLoading(status: PhoneAutoLogin(smsCode: smsCode)),
            error: (String? message) =>
                AuthenticationFailure(status: BadCredentials(message: message)),
            otpSent: () => const AuthenticationLoading(status: OtpSent())));
  }

  @override
  Future<AuthenticationState> verifyPhoneOtp({required String code}) {
    return _authDataSource.verifyPhoneOtp(code: code).then(
        (Either<AuthFailureDataSource, UserDataSource> value) => value.fold(
            (AuthFailureDataSource failure) => AuthenticationFailure(
                status: failure.maybeWhen(
                    serverError: (String? message) =>
                        ServerError(message: message),
                    badOtp: (String? message) => BadOtp(message: message),
                    otpExpired: (String? message) => BadOtp(message: message),
                    unknown: (String? message) => Unknown(message: message),
                    cancelled: (String? message) => const Cancelled(),
                    orElse: () => const Unknown().also((Unknown it) =>
                        Logger.e("Unexpected failure: $failure")))),
            (UserDataSource data) => const Authenticated(status: SignedIn())));
  }
}
