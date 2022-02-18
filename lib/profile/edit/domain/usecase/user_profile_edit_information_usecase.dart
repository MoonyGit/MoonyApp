import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/edit/domain/model/user_profile_edit_information_entity.dart';
import 'package:moony_app/profile/edit/domain/repository/user_profile_edit_information_repository.dart';

///Use case user profile edti information
class UserProfileEditInformationUseCase
    extends AsyncUseCase<UserProfileEditInformationEntity> {
  ///UserProfileEditInformationUseCase public constructor
  UserProfileEditInformationUseCase(this._userProfileEditInformationRepository);

  /// UserProfileInformationRepository instance
  final UserProfileEditInformationRepository
  _userProfileEditInformationRepository;

  @override
  Future<UserProfileEditInformationEntity> call({void input}) =>
      _userProfileEditInformationRepository.getUserInformation(id: "0");
}
