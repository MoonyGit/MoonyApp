import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/connectivity/model/connectivity.dart';
import 'package:moony_app/common/domain/connectivity/repository/connectivity_repository.dart';
import 'package:moony_app/common/util/logger.dart';

/// Give connected state
class IsConnectedUseCase extends ReactiveUseCase<bool> {
  /// Constructor
  IsConnectedUseCase(this._connectivityRepository);

  final IConnectivityRepository _connectivityRepository;

  @override
  Stream<bool> call({void input}) => _connectivityRepository
      .getConnectivityState()
      .map((ConnectivityStatus event) => (event == ConnectivityStatus.online)
          .also((bool it) => Logger.d("Connectivity use case $it")));
}
