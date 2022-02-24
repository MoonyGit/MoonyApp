/// Model ui for user profile information
class UserProfileBannerUi {
  /// constructor
  UserProfileBannerUi({
    required this.location,
    required this.firstName,
    required this.lastName,
    required this.birthdate,
    required this.profilePhoto,
    required this.froonysNumber,
    required this.activityNumber,
  });

  /// user location
  final String location;

  /// first name of user
  final String firstName;

  /// last name of user
  final String lastName;

  /// age of user
  final int birthdate;

  /// uri for profile picture of user
  final String profilePhoto;

  /// User's froonys number
  final int froonysNumber;

  /// User's activity number
  final int activityNumber;
}
