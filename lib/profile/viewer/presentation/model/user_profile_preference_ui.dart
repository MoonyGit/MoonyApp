/// UI model for user profile preferences
class UserProfilePreferencesUi {
  /// Constructor
  UserProfilePreferencesUi(
      {required this.id, required this.title, required this.isSelected});

  /// Id of preference
  final String id;

  /// title of preference
  final String title;

  /// user state for preference
  final bool isSelected;
}
