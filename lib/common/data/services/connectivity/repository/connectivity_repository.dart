import 'package:moony_app/common/data/services/connectivity/service/connectivity.dart';
import 'package:moony_app/common/domain/connectivity/model/connectivity.dart';
import 'package:moony_app/common/domain/connectivity/repository/connectivity_repository.dart';

/// Repository for connectivity
class ConnectivityRepository implements IConnectivityRepository {
  /// Constructor
  ConnectivityRepository(this._connectivity);

  final IConnectivityDataSource _connectivity;

  @override
  Stream<ConnectivityStatus> getConnectivityState() => _connectivity
      .getConnectivityStatusStream()
      .map((ConnectivityStatusDataModel event) => event.toDomain());
}

/// Extension to convert  Connectivity state
extension ConnectivityStatusMapper on ConnectivityStatusDataModel {
  /// Mapper method
  ConnectivityStatus toDomain() {
    switch (this) {
      case ConnectivityStatusDataModel.wifi:
      case ConnectivityStatusDataModel.data:
        return ConnectivityStatus.online;
      default:
        return ConnectivityStatus.offline;
    }
  }
}
