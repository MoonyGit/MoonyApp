import 'package:moony_app/settings/location/data/source/location_setting_data_source.dart';
import 'package:moony_app/settings/location/domain/model/distance_preference.dart';
import 'package:moony_app/settings/location/domain/repository/location_setting_repository.dart';

/// Setting location repository implementation
class LocationSettingRepositoryImpl extends LocationSettingRepository {
  /// constructor
  LocationSettingRepositoryImpl(this._dataSource);

  final LocationSettingDataSource _dataSource;

  @override
  Future<DistancePreference> getValue() => _dataSource
      .getValue()
      .then((double value) => DistancePreference(input: value));

  @override
  Future<void> setValue({required DistancePreference distance}) =>
      _dataSource.setValue(distance: distance.getOrCrash());
}
