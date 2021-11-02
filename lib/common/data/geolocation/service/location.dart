
/// Wrapper class to provide Location status
abstract class ILocationDataSource {

  /// Provide Location status as a stream
  Stream<bool> getLocationStatusStream();

  /// Provide Location status as a future
  Future<bool> getLocationStatus();

}