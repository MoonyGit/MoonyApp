/// User profile information entity
class UserProfileEditInformationDataModel {
  /// Constructor
  UserProfileEditInformationDataModel({
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

  /// User's id
  final String id;

  /// User's first name
  final String firstName;

  /// User's last name
  final String lastName;

  /// User's age
  final String age;

  /// User's pictures
  final String pictures;

  /// User's email
  final String email;

  /// User's phoneNumber
  final String phoneNumber;

  /// User's location
  final String location;

  /// User's description
  final String description;
}
