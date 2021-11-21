import 'package:get/get.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage.dart';
import 'package:moony_app/common/data/services/local_storage/local_storage_service.dart';
import 'package:moony_app/settings/data/setting_data_source.dart';
import 'package:moony_app/settings/data/setting_notification_repository_impl.dart';
import 'package:moony_app/settings/domain/usecase/setting_activity_notification_usecase.dart';
import 'package:moony_app/settings/domain/usecase/setting_extra_notification_usecase.dart';
import 'package:moony_app/settings/domain/usecase/setting_generic_notification_usecase.dart';
import 'package:moony_app/settings/presentation/notification/setting_notification_controller.dart';

/// Class to define SettingNotification Page dependencies by dependency injection
class SettingNotificationBindings extends Bindings {
  @override
  void dependencies() {
    /// Controller
    Get.lazyPut(() => SettingNotificationController(
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find()));

    /// Use case
    Get.lazyPut(
            () => SetSettingMatchUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(
            () => GetSettingMatchUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(
            () => SetSettingMessageUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(
            () => GetSettingMessageUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(() => SetSettingLikeUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(() => GetSettingLikeUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(
            () => SetSettingActivitySawUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(
            () => GetSettingActivitySawUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(
            () => SetSettingActivityFullUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(
            () => GetSettingActivityFullUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() =>
        SetSettingActivityExpiredUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(() =>
        GetSettingActivityExpiredUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() =>
        SetSettingActivityAvailableUseCase(Get.find<SettingRepositoryImpl>()));
    Get.lazyPut(() =>
        GetSettingActivityAvailableUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => GetEventUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => SetEventUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => GetPromotionUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => SetPromotionUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => GetNewsUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => SetNewsUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => GetSurveyUseCase(Get.find<SettingRepositoryImpl>()));

    Get.lazyPut(() => SetSurveyUseCase(Get.find<SettingRepositoryImpl>()));

    /// Repository
    Get.lazyPut(() => SettingRepositoryImpl(Get.find()));

    /// Data source
    Get.lazyPut<SettingDataSource>(() => SettingDataSourceImpl(
        Get.find(tag: SettingDataSourceImpl.settingStorageName)));

    Get.lazyPut<ILocalStorage>(
            () => LocalStorageService(SettingDataSourceImpl.settingStorageName),
        tag: SettingDataSourceImpl.settingStorageName,
        fenix: true);
  }
}
