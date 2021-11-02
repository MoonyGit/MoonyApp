import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/common/domain/location/repository/location_repository.dart';
import 'package:moony_app/common/util/logger.dart';

/// Give connected state
class IsLocationActivatedUseCase extends ReactiveUseCase<bool> {
  /// Constructor
  IsLocationActivatedUseCase(this._locationRepository);

  final ILocationRepository _locationRepository;

  @override
  Stream<bool> call({void input}) => _locationRepository
      .getLocationState().map((bool event) =>
      event.also((bool copy) {
        Logger.d("Location activated: $copy");
      })
  ).also((Stream<bool> p0) {
    Logger.d("call IsLocationActivatedUseCase");
  });
}
