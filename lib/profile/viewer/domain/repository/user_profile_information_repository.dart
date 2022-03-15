import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_description_entity.dart';

/// Repository for user information
abstract class UserProfileInformationRepository {
  /// Get the user information
  Future<Either<Failure,UserProfileDescriptionEntity>> getUserInformation();
}
