import 'package:moony_app/common/domain/connectivity/model/connectivity.dart';

/// Connectivity repository facade
abstract class IConnectivityRepository {

  /// Get connectivity state to listen changes
  Stream<ConnectivityStatus> getConnectivityState();
}
