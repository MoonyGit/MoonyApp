import 'authentication_state.dart';

/// Authentication state repository
abstract class IAuthStateRepository {
  /// get if user is authenticated by future
  Future<bool> isAuthenticated();

  /// get if user is authenticated by stream
  Stream<bool> isAuthenticatedStream();
}

/// Phone authentication repository
abstract class IPhoneAuthRepository {
  /// sign in with phone number (send phone otp)
  Future<AuthenticationState> signInWithPhoneNumber(
      {required String phoneNumber});

  /// verify phone otp
  Future<AuthenticationState> verifyPhoneOtp({required String code});
}
