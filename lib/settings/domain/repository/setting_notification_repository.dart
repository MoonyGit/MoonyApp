/// Repository for global setting
abstract class GlobalSettingRepository {
  /// get match value
  Future<bool> getMatchValue();

  /// set match value
  Future<void> setMatchValue({required bool state});

  /// get message value
  Future<bool> getMessageValue();

  /// set message value
  Future<void> setMessageValue({required bool state});

  /// get like value
  Future<bool> getLikeValue();

  /// set like value
  Future<void> setLikeValue({required bool state});
}

/// Repository for activity setting
abstract class ActivitySettingRepository {
  /// get activity saw value
  Future<bool> getActivitySawValue();

  /// set activity saw value
  Future<void> setActivitySawValue({required bool state});

  /// get activity full value
  Future<bool> getActivityFullValue();

  /// set activity full value
  Future<void> setActivityFullValue({required bool state});

  /// get activity expired value
  Future<bool> getActivityExpiredValue();

  /// set activity expired value
  Future<void> setActivityExpiredValue({required bool state});

  /// get activity available value
  Future<bool> getActivityAvailableValue();

  /// set activity available value
  Future<void> setActivityAvailableValue({required bool state});
}

/// Repository for extra setting
abstract class ExtraNotificationRepository {
  /// get event value
  Future<bool> getEventValue();

  /// set event value
  Future<void> setEventValue({required bool state});

  /// get promotion value
  Future<bool> getPromotionValue();

  /// set promotion value
  Future<void> setPromotionValue({required bool state});

  /// get news value
  Future<bool> getNewsValue();

  /// set news value
  Future<void> setNewsValue({required bool state});

  /// get survey value
  Future<bool> getSurveyValue();

  /// set survey value
  Future<void> setSurveyValue({required bool state});
}
