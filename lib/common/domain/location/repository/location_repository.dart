
/// Location repository facade
abstract class ILocationRepository {

  /// Get location activated state to listen
  Stream<bool> getLocationState();
}
