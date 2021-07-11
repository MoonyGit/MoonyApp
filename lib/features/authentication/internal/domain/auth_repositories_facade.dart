

/// Authentication state repository
abstract class IAuthStateRepository {
  /// get if user is authenticated by future
  Future<bool> isAuthenticated();

  /// get if user is authenticated by stream
  Stream<bool> isAuthenticatedStream();
}
