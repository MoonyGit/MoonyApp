import 'package:connectivity/connectivity.dart';
import 'package:moony_app/infrastructure/services/connectivity/connectivity.dart';

/// Wrapper class to provide connectivity status
class ConnectivityService extends IConnectivity {

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
