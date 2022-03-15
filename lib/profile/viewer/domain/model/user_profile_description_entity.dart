import 'package:moony_app/profile/viewer/domain/model/control/user_profile_description_control.dart';

/// User profile description entity
class UserProfileDescriptionEntity {
  /// Constructor
  UserProfileDescriptionEntity({
    required this.description,
  });

  /// User's description
  final UserProfileDescriptionControl description;
}
