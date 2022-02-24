import 'package:moony_app/common/data/services/geolocation/service/location.dart';
import 'package:moony_app/common/domain/location/repository/geolocation_repository.dart';

/// The GeoLocation repository
class GeolocationRepository implements IGeolocationRepository {
  /// Constructor
  GeolocationRepository(this._location);

  final ILocationDataSource _location;

  @override
  Stream<bool> getLocationState() => _location.getLocationStatusStream();
}
