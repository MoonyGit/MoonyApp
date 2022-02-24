/// Location repository facade
abstract class IGeolocationRepository {

  /// Get location activated state to listen
  Stream<bool> getLocationState();
}
