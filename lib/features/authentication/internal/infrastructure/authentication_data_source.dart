import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_data_source.freezed.dart';

/// The authentication data source contract
abstract class AuthDataSource {
  /// get the sign in user
  Future<UserDataSource?> getSignedInUser();

  /// get the sign in user by stream
  Stream<UserDataSource?> getUserAuthStateChanges();

  /// try sign in with phone number (send otp)
  Future<VerifyPhoneStateDataSource> signInWithPhoneNumber(
      {required String phoneNumber});

  /// verify phone otp
  Future<Either<AuthFailureDataSource, UserDataSource>> verifyPhoneOtp(
      {required String code});
}

/// User data source Model
class UserDataSource {
  /// Constructor
  UserDataSource({required this.id});
  /// id of user
  String id;
}

@freezed
/// VerifyPhoneState data source sealed class
class VerifyPhoneStateDataSource with _$VerifyPhoneStateDataSource {
  /// auto login by phone
  const factory VerifyPhoneStateDataSource.autoLogin(
      {required String smsCode}) = VerifyPhoneAutoLoginDataSource;

  /// error during phone login
  const factory VerifyPhoneStateDataSource.error({String? message}) =
      VerifyPhoneErrorDataSource;

  /// phone otp sent
  const factory VerifyPhoneStateDataSource.otpSent() =
      VerifyPhoneOtpSentDataSource;
}

@freezed
/// AuthFailure data source sealed class
class AuthFailureDataSource with _$AuthFailureDataSource {
  /// credentials already used
  const factory AuthFailureDataSource.credentialsAlreadyUsed(
      {@Default(null) String? message}) = AuthCredentialsAlreadyUsedDataSource;

  /// credentials already used
  const factory AuthFailureDataSource.serverError(
      {@Default(null) String? message}) = AuthServerErrorDataSource;

  /// bad credentials provided
  const factory AuthFailureDataSource.badCredentials(
      {@Default(null) String? message}) = AuthBadCredentialsDataSource;

  /// unknown or unhandled behavior
  const factory AuthFailureDataSource.unknown(
      {@Default(null) String? message}) = AuthUnknownDataSource;

  /// cancelled by user
  const factory AuthFailureDataSource.cancelled(
      {@Default(null) String? message}) = AuthCancelledDataSource;

  /// otp expired
  const factory AuthFailureDataSource.otpExpired(
      {@Default(null) String? message}) = AuthOtpExpiredDataSource;

  /// bad otp provided
  const factory AuthFailureDataSource.badOtp({@Default(null) String? message}) =
      AuthBadOtpDataSource;
}
