/// Indicate connectivity status
enum ConnectivityStatusDataModel { wifi, data, none }

/// Wrapper class to provide connectivity status
abstract class IConnectivityDataSource {

  /// Provide connectivity status as a stream
  Stream<ConnectivityStatusDataModel> getConnectivityStatusStream();

  /// Provide connectivity status as a future
  Future<ConnectivityStatusDataModel> getConnectivityStatus();

}