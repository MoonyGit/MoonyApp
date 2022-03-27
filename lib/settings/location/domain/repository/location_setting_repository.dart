import 'package:moony_app/settings/location/domain/model/distance_preference.dart';

/// Interface for location setting repository
abstract class LocationSettingRepository {
  /// Get value for filter distance
  Future<DistancePreference> getValue();

  /// Set new value for filter distance
  Future<void> setValue({required DistancePreference distance});
}
