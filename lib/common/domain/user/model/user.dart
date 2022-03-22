import 'package:moony_app/common/base/domain/model/entity.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/phone_number.dart';
import 'package:moony_app/common/domain/user/model/relation_state.dart';

import 'email.dart';
import 'gender.dart';
import 'name.dart';

/// Error during the user creation
class ErrorCreatingUserFailure extends Failure {
  /// Constructor
  const ErrorCreatingUserFailure({required String message})
      : super(message: message);
}

/// User entity class
class User extends Entity<String> {
  /// Constructor
  User(
      {required this.id,
      required this.familyName,
      required this.firstName,
      required this.birthdate,
      required this.emailAddress,
      required this.phoneNumber,
      required this.gender,
      required this.relationState,
      required this.profilePhoto,
      required this.secondaryPhotos,
      required this.verified,
      required this.creationDate,
      required this.lastUpdateDate,
      required this.hobbies});

  @override
  final String id;

  /// User family name
  final Name familyName;

  /// User first name
  final Name firstName;

  /// User birth date
  final Birthdate birthdate;

  /// User email address
  final EmailAddress emailAddress;

  /// User phone number
  final PhoneNumber phoneNumber;

  /// User gender
  final Gender gender;

  /// User relation state
  final RelationState relationState;

  /// User profile photo url
  final Uri profilePhoto;

  /// User secondary photo url list
  final List<Uri> secondaryPhotos;

  /// User profile verified state
  final bool verified;

  /// User creation date
  late final DateTime creationDate;

  /// User update date
  late final DateTime lastUpdateDate;

  /// User hobby list
  late final List<ActivityType> hobbies;
}
