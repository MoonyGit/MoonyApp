import 'package:moony_app/common/base/domain/model/entity.dart';

/// User profile edit information entity
class UserProfileEditInformationEntity extends Entity<String> {
  /// Constructor
  UserProfileEditInformationEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.pictures,
    required this.email,
    required this.phoneNumber,
    required this.location,
    required this.description,
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

  /// User's email
  final String email;

  /// User's phone number
  final String phoneNumber;

  /// User's location
  final String location;

  /// User's description
  final String description;
}
