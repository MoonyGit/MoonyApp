import 'package:moony_app/common/base/domain/model/entity.dart';
import 'package:moony_app/common/domain/user/model/relation_state.dart';

/// User profile information entity
class UserProfileInformationEntity extends Entity<String> {
  /// Constructor
  UserProfileInformationEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.pictures,
    required this.gender,
    required this.sexualOrientation,
    required this.relationState,
    required this.spokenLanguage,
    required this.location,
    required this.description,
    required this.froonysNumber,
    required this.activityNumber,
  });

  @override
  final String id;

  /// User's first name
  final String firstName;

  /// User's last name
  final String lastName;

  /// User's age
  final String age;

  /// User's pictures
  final Uri pictures;

  /// User's gender
  final String gender;

  /// User's sexual orientation
  final String sexualOrientation;

  /// User's relation ship
  final RelationState relationState;

  /// User's spoken language
  final String spokenLanguage;

  /// User's location
  final String location;

  /// User's description
  final String description;

  /// User's froonys number
  final int froonysNumber;

  /// User's activity number
  final int activityNumber;
}
