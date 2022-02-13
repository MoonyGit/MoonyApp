import 'package:moony_app/common/data/services/geolocation/service/location.dart';
import 'package:moony_app/common/domain/location/repository/location_repository.dart';

/// The GeoLocation repository
class LocationRepository implements ILocationRepository {
  /// Constructor
  LocationRepository(this._location);

  final ILocationDataSource _location;

  @override
  Stream<bool> getLocationState() => _location.getLocationStatusStream();
}
