/// Model ui for user profile information
class UserProfileInformationUi {
  /// constructor
  UserProfileInformationUi({
    required this.location,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.profilePhoto,
    required this.froonysNumber,
    required this.activityNumber,
  });

  /// location of user
  final String location;

  /// first name of user
  final String firstName;

  /// last name of user
  final String lastName;

  /// age of user
  final String age;

  /// uri for profile picture of user
  final String profilePhoto;

  /// User's froonys number
  final int froonysNumber;

  /// User's activity number
  final int activityNumber;
}
