import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/settings/location/domain/model/distance_preference.dart';
import 'package:moony_app/settings/location/domain/repository/location_setting_repository.dart';

/// Get location settings filter
class GetSettingLocationUseCase extends AsyncUseCase<DistancePreference>{

  /// constructor
  GetSettingLocationUseCase(this.repository);

  /// notification match setting repository
  final LocationSettingRepository repository;

  @override
  Future<DistancePreference> call({void input}) => repository.getValue();
}
