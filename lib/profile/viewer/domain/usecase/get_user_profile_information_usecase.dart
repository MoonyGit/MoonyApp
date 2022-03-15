import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/base/domain/usecase/usecase.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_description_entity.dart';
import 'package:moony_app/profile/viewer/domain/repository/user_profile_information_repository.dart';

///Use case GetUserInfoForProfile
class GetUserProfileInformationUseCase
    extends AsyncUseCase<Either<Failure, UserProfileDescriptionEntity>> {
  ///GetUserInfoForProfile public constructor
  GetUserProfileInformationUseCase(this._userProfileInformationRepository);

  /// UserProfileInformationRepository instance
  final UserProfileInformationRepository _userProfileInformationRepository;

  @override
  Future<Either<Failure, UserProfileDescriptionEntity>> call({void input}) =>
      _userProfileInformationRepository.getUserInformation();
}
