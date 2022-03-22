import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/settings/notification/domain/repository/setting_notification_repository.dart';

/// get match notification value
class GetSettingMatchUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSettingMatchUseCase(this.repository);

  /// notification match setting repository
  final GlobalSettingRepository repository;

  @override
  Future<bool> call({void input}) => repository.getMatchValue();
}

/// set match notification value
class SetSettingMatchUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSettingMatchUseCase(this.repository);

  /// notification match setting repository
  final GlobalSettingRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setMatchValue(state: input);
}

/// get message notification value
class GetSettingMessageUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSettingMessageUseCase(this.repository);

  /// notification message setting repository
  final GlobalSettingRepository repository;

  @override
  Future<bool> call({void input}) => repository.getMessageValue();
}

/// set message notification value
class SetSettingMessageUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSettingMessageUseCase(this.repository);

  /// notification message setting repository
  final GlobalSettingRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setMessageValue(state: input);
}

/// get like notification value
class GetSettingLikeUseCase extends AsyncUseCase<bool> {
  /// constructor
  GetSettingLikeUseCase(this.repository);

  /// notification message setting repository
  final GlobalSettingRepository repository;

  @override
  Future<bool> call({void input}) => repository.getLikeValue();
}

/// set like notification value
class SetSettingLikeUseCase extends AsyncParamUseCase<bool, void> {
  /// constructor
  SetSettingLikeUseCase(this.repository);

  /// notification message setting repository
  final GlobalSettingRepository repository;

  @override
  Future<void> call({required bool input}) =>
      repository.setLikeValue(state: input);
}
