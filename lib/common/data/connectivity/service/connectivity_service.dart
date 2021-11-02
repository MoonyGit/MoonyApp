import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:rxdart/rxdart.dart';

import 'connectivity.dart';

/// Wrapper class to provide connectivity status
class ConnectivityService implements IConnectivityDataSource {
  /// Provide connectivity status as a stream
  @override
  Stream<ConnectivityStatusDataModel> getConnectivityStatusStream() {
    return MergeStream<ConnectivityResult>(<Stream<ConnectivityResult>>[
      Connectivity().onConnectivityChanged,
      Connectivity().checkConnectivity().asStream()
    ]).map((ConnectivityResult result) =>
        result.toData().also(
                (ConnectivityStatusDataModel it) =>
                Logger.d("Connectivity status: $it")));
  }

  /// Provide connectivity status as a future
  @override
  Future<ConnectivityStatusDataModel> getConnectivityStatus() async {
    return Connectivity().checkConnectivity().then((ConnectivityResult value) =>
        value.toData().also((ConnectivityStatusDataModel it) =>
            Logger.d("Connectivity status: $it")));
  }
}

/// Mapper extension for Connectivity result
extension ConnectivityResultMapper on ConnectivityResult {
  /// Mapper method to data
  ConnectivityStatusDataModel toData() {
    switch (this) {
      case ConnectivityResult.wifi:
        return ConnectivityStatusDataModel.wifi;
      case ConnectivityResult.mobile:
        return ConnectivityStatusDataModel.data;
      default:
        return ConnectivityStatusDataModel.none;
    }
  }
}
