import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/settings/location/domain/model/distance_preference.dart';
import 'package:moony_app/settings/location/domain/repository/location_setting_repository.dart';

/// Set location settings filter
class SetSettingLocationUseCase
    extends AsyncParamUseCase<DistancePreference, void> {
  /// constructor
  SetSettingLocationUseCase(this.repository);

  /// notification match setting repository
  final LocationSettingRepository repository;

  @override
  Future<void> call({required DistancePreference input}) =>
      repository.setValue(distance: input);
}
