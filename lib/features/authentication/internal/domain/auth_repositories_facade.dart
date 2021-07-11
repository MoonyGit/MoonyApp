import 'authentication_state.dart';

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
  /// sign in with phone number (send phone otp)
  Future<AuthenticationState> signInWithPhoneNumber(
      {required String phoneNumber});

  /// verify phone otp
  Future<AuthenticationState> verifyPhoneOtp({required String code});
}

/// Email authentication repository
abstract class IEmailAuthRepository {
  /// sign in with email and password
  Future<AuthenticationState> signInWithEmailAndPassword(
      {required String emailAddress, required String password});
  /// register user with email and password (TODO: remove if not needed)
  Future<AuthenticationState> registerWithEmailAndPassword(
      {required String emailAddress, required String password});
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