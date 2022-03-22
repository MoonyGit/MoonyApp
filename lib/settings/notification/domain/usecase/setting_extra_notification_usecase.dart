import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/settings/notification/domain/repository/setting_notification_repository.dart';

/// get event notification value
class GetEventUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetEventUseCase(this.repository);

  /// notification event setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<bool> call({void input}) => repository.getEventValue();
}

/// set event notification value
class SetEventUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetEventUseCase(this.repository);

  /// notification event setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setEventValue(state: input);
}

/// get promotion notification value
class GetPromotionUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetPromotionUseCase(this.repository);

  /// notification promotion setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<bool> call({void input}) => repository.getPromotionValue();
}

/// set promotion notification value
class SetPromotionUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetPromotionUseCase(this.repository);

  /// notification promotion setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setPromotionValue(state: input);
}

/// get news notification value
class GetNewsUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetNewsUseCase(this.repository);

  /// notification news setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<bool> call({void input}) => repository.getNewsValue();
}

/// set news notification value
class SetNewsUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetNewsUseCase(this.repository);

  /// notification news setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setNewsValue(state: input);
}

/// get survey notification value
class GetSurveyUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSurveyUseCase(this.repository);

  /// notification survey setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<bool> call({void input}) => repository.getSurveyValue();
}

/// set survey notification value
class SetSurveyUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSurveyUseCase(this.repository);

  /// notification survey setting repository
  final ExtraNotificationRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setSurveyValue(state: input);
}
