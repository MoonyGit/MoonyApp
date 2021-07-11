/// Indicate connectivity status
enum ConnectivityStatus { online, offline }

/// Wrapper class to provide connectivity status
abstract class IConnectivity {

  /// Provide connectivity status as a stream
  Stream<ConnectivityStatus> getConnectivityStatusStream();

  /// Provide connectivity status as a future
  Future<ConnectivityStatus> getConnectivityStatus();

}