import 'package:connectivity_plus/connectivity_plus.dart';

import 'connectivity.dart';

/// Wrapper class to provide connectivity status
class ConnectivityService implements IConnectivity {

  /// Provide connectivity status as a stream
  @override
  Stream<ConnectivityStatus> getConnectivityStatusStream() {
    return Connectivity().onConnectivityChanged.map(
        (ConnectivityResult result) => result == ConnectivityResult.none
            ? ConnectivityStatus.offline
            : ConnectivityStatus.online);
  }

  /// Provide connectivity status as a future
  @override
  Future<ConnectivityStatus> getConnectivityStatus() async {
    return Connectivity().checkConnectivity().then((ConnectivityResult value) =>
        value == ConnectivityResult.none
            ? ConnectivityStatus.offline
            : ConnectivityStatus.online);
  }
}
