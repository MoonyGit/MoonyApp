import 'package:moony_app/common/data/services/local_storage/local_storage.dart';

/// location setting data source
abstract class LocationSettingDataSource {
  /// Get location setting value
  Future<double> getValue();

  /// Set location setting value
  Future<void> setValue({required double distance});
}

/// Location setting data source implementation
class LocationSettingDataSourceImpl extends LocationSettingDataSource {
  /// constructor
  LocationSettingDataSourceImpl(this._storage);

  /// key for setting shared preference
  static const String settingLocationStorageName =
      "location_setting_storage_table_name";

  /// key for stored location value
  static const String _locationKey = "setting_location_distance";
  static const double _defaultDistance = 100;

  final ILocalStorage _storage;

  @override
  Future<double> getValue() async => _storage
      .get<double>(_locationKey)
      .then((double? value) => value ?? _defaultDistance);

  @override
  Future<void> setValue({required double distance}) =>
      _storage.add(_locationKey, distance);
}
