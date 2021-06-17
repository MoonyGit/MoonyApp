/// Indicate connectivity status
// ignore: public_member_api_docs
enum ConnectivityStatus { online, offline }

/// Wrapper class to provide connectivity status
abstract class IConnectivity {

  /// Provide connectivity status as a stream
  Stream<ConnectivityStatus> getConnectivityStatusStream();

  /// Provide connectivity status as a future
  Future<ConnectivityStatus> getConnectivityStatus();

}