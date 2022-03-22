import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/settings/notification/domain/repository/setting_notification_repository.dart';

/// get activity saw notification value
class GetSettingActivitySawUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSettingActivitySawUseCase(this.repository);

  /// notification activity saw setting repository
  final ActivitySettingRepository repository;

  @override
  Future<bool> call({void input}) => repository.getActivitySawValue();
}

/// set activity saw notification value
class SetSettingActivitySawUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSettingActivitySawUseCase(this.repository);

  /// notification activity saw setting repository
  final ActivitySettingRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setActivitySawValue(state: input);
}

/// get activity full notification value
class GetSettingActivityFullUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSettingActivityFullUseCase(this.repository);

  /// notification activity full setting repository
  final ActivitySettingRepository repository;

  @override
  Future<bool> call({void input}) => repository.getActivityFullValue();
}

/// set activity full notification value
class SetSettingActivityFullUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSettingActivityFullUseCase(this.repository);

  /// notification activity full setting repository
  final ActivitySettingRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setActivityFullValue(state: input);
}

/// get activity expired notification value
class GetSettingActivityExpiredUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSettingActivityExpiredUseCase(this.repository);

  /// notification activity expired setting repository
  final ActivitySettingRepository repository;

  @override
  Future<bool> call({void input}) => repository.getActivityExpiredValue();
}

/// set activity expired notification value
class SetSettingActivityExpiredUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSettingActivityExpiredUseCase(this.repository);

  /// notification activity expired setting repository
  final ActivitySettingRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setActivityExpiredValue(state: input);
}

/// get activity available notification value
class GetSettingActivityAvailableUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSettingActivityAvailableUseCase(this.repository);

  /// notification activity available setting repository
  final ActivitySettingRepository repository;

  @override
  Future<bool> call({void input}) => repository.getActivityAvailableValue();
}

/// set activity available notification value
class SetSettingActivityAvailableUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSettingActivityAvailableUseCase(this.repository);

  /// notification activity available setting repository
  final ActivitySettingRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setActivityAvailableValue(state: input);
}
