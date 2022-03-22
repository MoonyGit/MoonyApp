import 'package:moony_app/settings/notification/data/setting_data_source.dart';
import 'package:moony_app/settings/notification/domain/repository/setting_notification_repository.dart';

/// implementation of setting repository
/// contains all get and set in shared pref
class SettingRepositoryImpl
    implements
        GlobalSettingRepository,
        ActivitySettingRepository,
        ExtraNotificationRepository {
  /// constructor
  SettingRepositoryImpl(this._dataSource);

  final SettingDataSource _dataSource;

  @override
  Future<bool> getMatchValue() => _dataSource.getMatchValue();

  @override
  Future<bool> getActivityAvailableValue() => _dataSource.getMatchValue();

  @override
  Future<bool> getActivityExpiredValue() =>
      _dataSource.getActivityExpiredValue();

  @override
  Future<bool> getActivityFullValue() => _dataSource.getActivityFullValue();

  @override
  Future<bool> getActivitySawValue() => _dataSource.getActivitySawValue();

  @override
  Future<bool> getEventValue() => _dataSource.getEventValue();

  @override
  Future<bool> getLikeValue() => _dataSource.getLikeValue();

  @override
  Future<bool> getMessageValue() => _dataSource.getMessageValue();

  @override
  Future<bool> getNewsValue() => _dataSource.getNewsValue();

  @override
  Future<bool> getPromotionValue() => _dataSource.getPromotionValue();

  @override
  Future<bool> getSurveyValue() => _dataSource.getSurveyValue();

  @override
  Future<void> setMatchValue({required bool state}) =>
      _dataSource.setMatchValue(state: state);

  @override
  Future<void> setActivityAvailableValue({required bool state}) =>
      _dataSource.setMessageValue(state: state);

  @override
  Future<void> setActivityExpiredValue({required bool state}) =>
      _dataSource.setActivityExpiredValue(state: state);

  @override
  Future<void> setActivityFullValue({required bool state}) =>
      _dataSource.setActivityFullValue(state: state);

  @override
  Future<void> setActivitySawValue({required bool state}) =>
      _dataSource.setActivitySawValue(state: state);

  @override
  Future<void> setEventValue({required bool state}) =>
      _dataSource.setEventValue(state: state);

  @override
  Future<void> setLikeValue({required bool state}) =>
      _dataSource.setLikeValue(state: state);

  @override
  Future<void> setMessageValue({required bool state}) =>
      _dataSource.setMessageValue(state: state);

  @override
  Future<void> setNewsValue({required bool state}) =>
      _dataSource.setNewsValue(state: state);

  @override
  Future<void> setPromotionValue({required bool state}) =>
      _dataSource.setPromotionValue(state: state);

  @override
  Future<void> setSurveyValue({required bool state}) =>
      _dataSource.setSurveyValue(state: state);
}
