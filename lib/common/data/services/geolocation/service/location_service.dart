import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/data/services/geolocation/service/location.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:rxdart/rxdart.dart';

/// Wrapper class to provide connectivity status
class LocationService implements ILocationDataSource {
  /// Provide connectivity status as a stream
  @override
  Stream<bool> getLocationStatusStream() {
    return MergeStream<bool>(<Stream<bool>>[
      Geolocator.getServiceStatusStream().map((ServiceStatus result) =>
          result.toData().also((bool it) => Logger.d("Location status: $it"))),
      Geolocator.isLocationServiceEnabled().asStream()
    ]);
  }

  /// Provide connectivity status as a future
  @override
  Future<bool> getLocationStatus() => Geolocator.isLocationServiceEnabled();
}

/// Mapper extension for Connectivity result
extension LocationServiceStatusMapper on ServiceStatus {
  /// Mapper method to data
  bool toData() => this == ServiceStatus.enabled;
}
