/// User profile activity information data model
class UserProfileBannerDataModel {
  /// Constructor
  UserProfileBannerDataModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.pictures,
    required this.location,
    required this.froonysNumber,
    required this.activityNumber,
  });

  /// User profile information id
  final String id;

  /// User's first name
  final String firstName;

  /// User's last name
  final String lastName;

  /// User's age
  final String age;

  /// User's pictures
  final String pictures;

  /// User's location
  final String location;

  /// User's froonys number
  final int froonysNumber;

  /// User's activity number
  final int activityNumber;
}
