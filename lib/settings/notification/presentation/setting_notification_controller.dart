import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/settings/notification/domain/usecase/setting_activity_notification_usecase.dart';
import 'package:moony_app/settings/notification/domain/usecase/setting_extra_notification_usecase.dart';
import 'package:moony_app/settings/notification/domain/usecase/setting_generic_notification_usecase.dart';

/// The setting notification viewModel of location page
class SettingNotificationController extends GetxController {
  /// constructor
  SettingNotificationController(
      this._getSettingMatchUseCase,
      this._setSettingMatchUseCase,
      this._getSettingMessageUseCase,
      this._setSettingMessageUseCase,
      this._getSettingLikeUseCase,
      this._setSettingLikeUseCase,
      this._getSettingActivitySawUseCase,
      this._setSettingActivitySawUseCase,
      this._getSettingActivityFullUseCase,
      this._setSettingActivityFullUseCase,
      this._getSettingActivityExpiredUseCase,
      this._setSettingActivityExpiredUseCase,
      this._getSettingActivityAvailableUseCase,
      this._setSettingActivityAvailableUseCase,
      this._getEventUseCase,
      this._setEventUseCase,
      this._getPromotionUseCase,
      this._setPromotionUseCase,
      this._getNewsUseCase,
      this._setNewsUseCase,
      this._getSurveyUseCase,
      this._setSurveyUseCase) {
    _initGlobalNotifications();
    _initActivityNotifications();
    _initExtraNotifications();
  }

  /// Generic notification use case
  final GetSettingMatchUseCase _getSettingMatchUseCase;
  final SetSettingMatchUseCase _setSettingMatchUseCase;
  final GetSettingMessageUseCase _getSettingMessageUseCase;
  final SetSettingMessageUseCase _setSettingMessageUseCase;
  final GetSettingLikeUseCase _getSettingLikeUseCase;
  final SetSettingLikeUseCase _setSettingLikeUseCase;

  /// Activity notification use case
  final GetSettingActivitySawUseCase _getSettingActivitySawUseCase;
  final SetSettingActivitySawUseCase _setSettingActivitySawUseCase;
  final GetSettingActivityFullUseCase _getSettingActivityFullUseCase;
  final SetSettingActivityFullUseCase _setSettingActivityFullUseCase;
  final GetSettingActivityExpiredUseCase _getSettingActivityExpiredUseCase;
  final SetSettingActivityExpiredUseCase _setSettingActivityExpiredUseCase;
  final GetSettingActivityAvailableUseCase _getSettingActivityAvailableUseCase;
  final SetSettingActivityAvailableUseCase _setSettingActivityAvailableUseCase;

  /// Extra notification use case
  final GetEventUseCase _getEventUseCase;
  final SetEventUseCase _setEventUseCase;
  final GetPromotionUseCase _getPromotionUseCase;
  final SetPromotionUseCase _setPromotionUseCase;
  final GetNewsUseCase _getNewsUseCase;
  final SetNewsUseCase _setNewsUseCase;
  final GetSurveyUseCase _getSurveyUseCase;
  final SetSurveyUseCase _setSurveyUseCase;

  /// Because when open the view we have animation state change
  RxBool showSpinner = RxBool(true);

  /// observable value match
  RxBool stateMatch = RxBool(true);

  /// observable value message
  RxBool stateMessage = RxBool(true);

  /// observable value like
  RxBool stateLike = RxBool(true);

  /// observable value like
  RxBool stateActivitySaw = RxBool(true);

  /// observable value like
  RxBool stateActivityFull = RxBool(true);

  /// observable value like
  RxBool stateActivityExpired = RxBool(true);

  /// observable value like
  RxBool stateActivityAvailable = RxBool(true);

  /// observable value like
  RxBool stateEvent = RxBool(true);

  /// observable value like
  RxBool statePromotion = RxBool(true);

  /// observable value like
  RxBool stateNews = RxBool(true);

  /// observable value like
  RxBool stateSurvey = RxBool(true);

  void _initGlobalNotifications() {
    _getSettingMatchUseCase().then((bool value) {
      showSpinner.value = false;
      stateMatch.value = value;
    });

    _getSettingMessageUseCase().then((bool value) {
      showSpinner.value = false;
      stateMessage.value = value;
    });

    _getSettingLikeUseCase().then((bool value) {
      showSpinner.value = false;
      stateLike.value = value;
    });
  }

  void _initActivityNotifications() {
    _getSettingActivitySawUseCase().then((bool value) {
      showSpinner.value = false;
      stateActivitySaw.value = value;
    });

    _getSettingActivityFullUseCase().then((bool value) {
      showSpinner.value = false;
      stateActivityFull.value = value;
    });

    _getSettingActivityExpiredUseCase().then((bool value) {
      showSpinner.value = false;
      stateActivityExpired.value = value;
    });

    _getSettingActivityAvailableUseCase().then((bool value) {
      showSpinner.value = false;
      stateActivityAvailable.value = value;
    });
  }

  void _initExtraNotifications() {
    _getEventUseCase().then((bool value) {
      showSpinner.value = false;
      stateNews.value = value;
    });

    _getPromotionUseCase().then((bool value) {
      showSpinner.value = false;
      statePromotion.value = value;
    });

    _getNewsUseCase().then((bool value) {
      showSpinner.value = false;
      stateNews.value = value;
    });

    _getSurveyUseCase().then((bool value) {
      showSpinner.value = false;
      stateSurvey.value = value;
    });
  }

  /// Change switch value and saved in shared pref for match
  void changeNotificationMatchPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSettingMatchUseCase(input: isEnabled);
    stateMatch.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for message
  void changeNotificationMessagePreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSettingMessageUseCase(input: isEnabled);
    stateMessage.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for like
  void changeNotificationLikePreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSettingLikeUseCase(input: isEnabled);
    stateLike.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for activity saw
  void changeNotificationActivitySawPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSettingActivitySawUseCase(input: isEnabled);
    stateActivitySaw.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for activity full
  void changeNotificationActivityFullPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSettingActivityFullUseCase(input: isEnabled);
    stateActivityFull.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for activity expired
  void changeNotificationActivityExpiredPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSettingActivityExpiredUseCase(input: isEnabled);
    stateActivityExpired.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for activity available
  void changeNotificationActivityAvailablePreference(
      {required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSettingActivityAvailableUseCase(input: isEnabled);
    stateActivityAvailable.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for event
  void changeNotificationEventPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setEventUseCase(input: isEnabled);
    stateEvent.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for promotion
  void changeNotificationPromotionPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setPromotionUseCase(input: isEnabled);
    statePromotion.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for news
  void changeNotificationNewsPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setNewsUseCase(input: isEnabled);
    stateNews.value = isEnabled;
  }

  /// Change switch value and saved in shared pref for survey
  void changeNotificationSurveyPreference({required bool isEnabled}) {
    Logger.d("state $isEnabled");
    _setSurveyUseCase(input: isEnabled);
    stateSurvey.value = isEnabled;
  }
}
