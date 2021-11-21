import 'package:moony_app/common/data/services/local_storage/local_storage.dart';

/// Setting data source
abstract class SettingDataSource {
  /// Get match value from shared pref
  Future<bool> getMatchValue();

  /// Set match value from shared pref
  Future<void> setMatchValue({required bool state});

  /// Get message value from shared pref
  Future<bool> getMessageValue();

  /// Set message value from shared pref
  Future<void> setMessageValue({required bool state});

  /// Get like value from shared pref
  Future<bool> getLikeValue();

  /// Set like value from shared pref
  Future<void> setLikeValue({required bool state});

  /// Get activity saw value from shared pref
  Future<bool> getActivitySawValue();

  /// Set activity saw value from shared pref
  Future<void> setActivitySawValue({required bool state});

  /// Get activity full value from shared pref
  Future<bool> getActivityFullValue();

  /// Set activity full value from shared pref
  Future<void> setActivityFullValue({required bool state});

  /// Get activity expired value from shared pref
  Future<bool> getActivityExpiredValue();

  /// Set activity expired value from shared pref
  Future<void> setActivityExpiredValue({required bool state});

  /// Get activity available value from shared pref
  Future<bool> getActivityAvailableValue();

  /// Set activity available value from shared pref
  Future<void> setActivityAvailableValue({required bool state});

  /// Get event value from shared pref
  Future<bool> getEventValue();

  /// Set event value from shared pref
  Future<void> setEventValue({required bool state});

  /// Get promotion value from shared pref
  Future<bool> getPromotionValue();

  /// Set promotion value from shared pref
  Future<void> setPromotionValue({required bool state});

  /// Get news value from shared pref
  Future<bool> getNewsValue();

  /// Set news value from shared pref
  Future<void> setNewsValue({required bool state});

  /// Get survey value from shared pref
  Future<bool> getSurveyValue();

  /// Set survey value from shared pref
  Future<void> setSurveyValue({required bool state});
}

/// Setting data source implementation
class SettingDataSourceImpl extends SettingDataSource {
  /// constructor
  SettingDataSourceImpl(this._storage);

  /// key for setting shared preference
  static const String settingStorageName = "setting_storage_table_name";

  static const String _matchKey = "setting_match_notification";
  static const String _messageKey = "setting_message_notification";
  static const String _likeKey = "setting_like_notification";
  static const String _activitySawKey = "setting_activity_saw_notification";
  static const String _activityFullKey = "setting_activity_full_notification";
  static const String _activityExpiredKey =
      "setting_activity_expired_notification";
  static const String _activityAvailableKey =
      "setting_activity_available_notification";
  static const String _eventKey = "setting_event_notification";
  static const String _promotionKey = "setting_promotion_notification";
  static const String _newsKey = "setting_news_notification";
  static const String _surveyKey = "setting_survey_notification";

  final ILocalStorage _storage;

  @override
  Future<bool> getMatchValue() async =>
      _storage.get<bool>(_matchKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getActivityAvailableValue() async => _storage
      .get<bool>(_activityAvailableKey)
      .then((bool? value) => value ?? true);

  @override
  Future<bool> getEventValue() async =>
      _storage.get<bool>(_eventKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getActivityExpiredValue() async => _storage
      .get<bool>(_activityExpiredKey)
      .then((bool? value) => value ?? true);

  @override
  Future<bool> getActivityFullValue() async =>
      _storage.get<bool>(_activityFullKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getNewsValue() async =>
      _storage.get<bool>(_newsKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getPromotionValue() async =>
      _storage.get<bool>(_promotionKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getActivitySawValue() async =>
      _storage.get<bool>(_activitySawKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getSurveyValue() async =>
      _storage.get<bool>(_surveyKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getLikeValue() async =>
      _storage.get<bool>(_likeKey).then((bool? value) => value ?? true);

  @override
  Future<bool> getMessageValue() async =>
      _storage.get<bool>(_messageKey).then((bool? value) => value ?? true);

  @override
  Future<void> setMatchValue({required bool state}) =>
      _storage.add(_matchKey, state);

  @override
  Future<void> setActivityAvailableValue({required bool state}) =>
      _storage.add(_activityAvailableKey, state);

  @override
  Future<void> setEventValue({required bool state}) =>
      _storage.add(_eventKey, state);

  @override
  Future<void> setActivityExpiredValue({required bool state}) =>
      _storage.add(_activityExpiredKey, state);

  @override
  Future<void> setActivityFullValue({required bool state}) =>
      _storage.add(_activityFullKey, state);

  @override
  Future<void> setNewsValue({required bool state}) =>
      _storage.add(_newsKey, state);

  @override
  Future<void> setPromotionValue({required bool state}) =>
      _storage.add(_promotionKey, state);

  @override
  Future<void> setActivitySawValue({required bool state}) =>
      _storage.add(_activitySawKey, state);

  @override
  Future<void> setSurveyValue({required bool state}) =>
      _storage.add(_surveyKey, state);

  @override
  Future<void> setLikeValue({required bool state}) =>
      _storage.add(_likeKey, state);

  @override
  Future<void> setMessageValue({required bool state}) =>
      _storage.add(_messageKey, state);
}
