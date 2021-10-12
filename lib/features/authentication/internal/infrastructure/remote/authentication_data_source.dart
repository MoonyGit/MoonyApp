import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_data_source.freezed.dart';

/// The authentication data source contract
abstract class AuthDataSource {
  /// get the sign in user
  Future<AuthUserDataSourceModel?> getSignedInUser();

  /// get the sign in user by stream
  Stream<AuthUserDataSourceModel?> getUserAuthStateChanges();

  /// try sign in with phone number (send otp)
  Future<void> signInWithPhoneNumber({required String phoneNumber});

  /// get phone number auth state as a stream, provide results of
  /// void signInWithPhoneNumber({required String phoneNumber}) method
  Stream<VerifyPhoneStateDataSourceEvent> getPhoneNumberAuthenticationState();

  /// verify phone otp
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      verifyPhoneOtp({required String code});

  /// sign up user by email
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  /// sign in user by email
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  /// sign in user with google
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithGoogle();

  /// sign in user with facebook
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithFacebook();

  /// sign in user with apple
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithApple();

  /// sign out user
  Future<void> signOut();
}

/// User data source Model
class AuthUserDataSourceModel {
  /// Constructor
  AuthUserDataSourceModel(
      {required this.id, this.phone, this.email, this.externalPhotoUrl});

  /// id of user
  String id;
  /// phone of user in case of auth by phone (always the case for us)
  String? phone;
  /// email address of user in case of auth by email
  String? email;
  /// external photo url from providers like Facebook etc
  String? externalPhotoUrl;
}

/// VerifyPhoneState data source sealed class class VerifyPhoneStateDataSource
@freezed
class VerifyPhoneStateDataSourceEvent with _$VerifyPhoneStateDataSourceEvent {
  /// auto login by phone
  const factory VerifyPhoneStateDataSourceEvent.autoLogin(
      {required String smsCode}) = VerifyPhoneAutoLoginDataSource;

  /// error during phone login
  const factory VerifyPhoneStateDataSourceEvent.error({String? message}) =
      VerifyPhoneErrorDataSource;

  /// phone otp sent
  const factory VerifyPhoneStateDataSourceEvent.otpSent() =
      VerifyPhoneOtpSentDataSource;
}

/// AuthFailure data source sealed class class AuthFailureDataSource
@freezed
class AuthFailureDataSourceEvent with _$AuthFailureDataSourceEvent {
  /// credentials already used
  const factory AuthFailureDataSourceEvent.credentialsAlreadyUsed(
      {@Default(null) String? message}) = AuthCredentialsAlreadyUsedDataSource;

  /// credentials already used
  const factory AuthFailureDataSourceEvent.serverError(
      {@Default(null) String? message}) = AuthServerErrorDataSource;

  /// bad credentials provided
  const factory AuthFailureDataSourceEvent.badCredentials(
      {@Default(null) String? message}) = AuthBadCredentialsDataSource;

  /// unknown or unhandled behavior
  const factory AuthFailureDataSourceEvent.unknown(
      {@Default(null) String? message}) = AuthUnknownDataSource;

  /// cancelled by user
  const factory AuthFailureDataSourceEvent.cancelled(
      {@Default(null) String? message}) = AuthCancelledDataSource;

  /// otp expired
  const factory AuthFailureDataSourceEvent.otpExpired(
      {@Default(null) String? message}) = AuthOtpExpiredDataSource;

  /// bad otp provided
  const factory AuthFailureDataSourceEvent.badOtp(
      {@Default(null) String? message}) = AuthBadOtpDataSource;
}
