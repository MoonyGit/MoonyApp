import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
/// Authentication state
class AuthenticationState with _$AuthenticationState {
  /// Authentication in pending validation
  const factory AuthenticationState.loading(
      {required AuthenticationStatus status}) = AuthenticationLoading;

  /// Not authenticated (first opened app or user sign out)
  const factory AuthenticationState.unAuthenticated(
      {required AuthenticationStatus status}) = UnAuthenticated;

  /// authenticated after a successful authentication
  const factory AuthenticationState.authenticated(
      {required AuthenticationStatus status}) = Authenticated;

  /// authentication failure (not authenticated with a failure)
  const factory AuthenticationState.failure(
      {required AuthenticationStatus status}) = AuthenticationFailure;
}

@freezed
/// Authentication status
class AuthenticationStatus with _$AuthenticationStatus {
  /// sign in status when user authenticate successfully
  /// used with Authenticated state
  const factory AuthenticationStatus.signedIn() = SignedIn;

  /// sign out status when user sign out successfully
  /// used with unAuthenticated state
  const factory AuthenticationStatus.signedOut() = SignedOut;

  /// session expired after a timeout (TODO: remove if not needed)
  /// used with Unauthenticated state
  const factory AuthenticationStatus.sessionExpired() = SessionExpired;

  /// bad credentials when user try to authenticate with bad credentials
  /// used with AuthenticationFailure state
  const factory AuthenticationStatus.badCredentials(
      {@Default(null) String? message}) = BadCredentials;

  /// cancelled by user
  /// used with AuthenticationFailure state
  const factory AuthenticationStatus.cancelled() = Cancelled;

  /// credentials already used
  /// used with AuthenticationFailure state
  const factory AuthenticationStatus.used() = CredentialsAlreadyUsed;

  /// bad otp validation
  /// used with AuthenticationFailure state
  const factory AuthenticationStatus.badOtp({@Default(null) String? message}) =
      BadOtp;

  /// otp sent
  /// used with AuthenticationLoading state
  const factory AuthenticationStatus.otpSent() = OtpSent;

  /// phone automatic otp retrieval
  /// used with AuthenticationLoading state
  const factory AuthenticationStatus.autoLogin({required String smsCode}) =
      PhoneAutoLogin;

  /// domain rules has been completed successfully,
  /// still waiting for server validation
  /// used with AuthenticationLoading state
  const factory AuthenticationStatus.inProgress() = InProgress;

  /// server error
  /// used with AuthenticationFailure state
  const factory AuthenticationStatus.serverError(
      {@Default(null) String? message}) = ServerError;

  /// default or unhandled error
  /// used with AuthenticationFailure state
  const factory AuthenticationStatus.unknown({@Default(null) String? message}) =
      Unknown;
}