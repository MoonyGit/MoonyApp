
import 'package:moony_app/common/domain/user/model/email.dart';
import 'package:moony_app/common/domain/user/model/password.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';

import '../model/authentication_state.dart';

/// Authentication state repository
abstract class IAuthStateRepository {
  /// get if user is authenticated by future
  Future<bool> isAuthenticated();

  /// get if user is authenticated by stream
  Stream<bool> isAuthenticatedStream();
}

/// Sign out repository
abstract class ISignOutRepository {
  /// sign out from all authentication providers
  Future<AuthenticationState> signOut();
}

/// Phone authentication repository
abstract class IPhoneAuthRepository {

  /// get phone number auth state as a stream, provide results of
  /// void signInWithPhoneNumber({required String phoneNumber}) method
  Stream<AuthenticationState> getPhoneNumberAuthenticationState();

  /// sign in with phone number (send phone otp)
  Future<void> signInWithPhoneNumber(
      {required PhoneNumber phoneNumber});

  /// verify phone otp
  Future<AuthenticationState> verifyPhoneOtp({required SmsOtp code});
}

/// Email authentication repository
abstract class IEmailAuthRepository {
  /// sign in with email and password
  Future<AuthenticationState> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  /// register user with email and password (TODO: remove if not needed)
  Future<AuthenticationState> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
}

/// Facebook authentication repository
abstract class IFacebookAuthRepository {
  /// sign in with facebook
  Future<AuthenticationState> signInWithFacebook();
}

/// Google authentication repository
abstract class IGoogleAuthRepository {
  /// sign in with google
  Future<AuthenticationState> signInWithGoogle();
}

/// Apple authentication repository
abstract class IAppleAuthRepository {
  /// sign in with apple
  Future<AuthenticationState> signInWithApple();
}
