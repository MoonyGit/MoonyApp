import 'package:get/get.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage_service.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/settings/location/data/repository/location_setting_repository_impl.dart';
import 'package:moony_app/settings/location/data/source/location_setting_data_source.dart';
import 'package:moony_app/settings/location/domain/model/distance_preference.dart';
import 'package:moony_app/settings/location/domain/usecase/get_setting_location_use_case.dart';
import 'package:moony_app/settings/location/domain/usecase/set_setting_location_use_case.dart';

/// Class to define SettingLocation Page dependencies by dependency injection
class SettingLocationBindings extends Bindings {
  @override
  void dependencies() {
    /// Controller
    Get.lazyPut(() => SettingLocationController(Get.find(), Get.find()));

    /// Use case
    Get.lazyPut(
          () =>
          GetSettingLocationUseCase(Get.find<LocationSettingRepositoryImpl>()),
    );
    Get.lazyPut(
          () =>
          SetSettingLocationUseCase(Get.find<LocationSettingRepositoryImpl>()),
    );

    /// Repository
    Get.lazyPut(() => LocationSettingRepositoryImpl(Get.find()));

    /// Data source
    Get.lazyPut<LocationSettingDataSource>(
          () => LocationSettingDataSourceImpl(
        Get.find(tag: LocationSettingDataSourceImpl.settingLocationStorageName),
      ),
    );

    Get.lazyPut<ILocalStorage>(
          () => LocalStorageService(
        LocationSettingDataSourceImpl.settingLocationStorageName,
      ),
      tag: LocationSettingDataSourceImpl.settingLocationStorageName,
      fenix: true,
    );
  }
}

/// The setting location viewModel of location page
class SettingLocationController extends GetxController {
  /// Constructor
  SettingLocationController(
      this._getSettingLocationUseCase,
      this._setSettingLocationUseCase,
      ) {
    _initDistanceValue();
  }

  final GetSettingLocationUseCase _getSettingLocationUseCase;
  final SetSettingLocationUseCase _setSettingLocationUseCase;

  /// The user distance value, default is 100 and can go from 0 to 100
  RxDouble locationDistance = RxDouble(DistancePreference.maxDistance);

  /// Load last value saved in preference
  void _initDistanceValue() {
    _getSettingLocationUseCase().then((DistancePreference value) {
      locationDistance.value = value.getOrCrash();
    });
  }

  /// Change value when slider has progress changed
  void changeLocationDistancePreference({required double distance}) {
    Logger.d("distance is: $distance");
    locationDistance.value = distance;
  }

  /// Save in preference the new value
  void saveLocationValue() {
    _setSettingLocationUseCase(
      input: DistancePreference(input: locationDistance.value),
    );
  }

  /// Go back to settings homepage
  void back() {
    Get.back();
  }
}
