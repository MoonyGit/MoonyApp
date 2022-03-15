import 'package:moony_app/common/base/domain/model/entity.dart';
import 'package:moony_app/profile/viewer/domain/model/control/user_profile_preference_title.dart';

/// Data class that represent a raw preference
class UserProfileRawPreferenceEntity extends Entity<String> {
  /// Default constructor
  UserProfileRawPreferenceEntity({required this.id, required this.title});

  @override
  final String id;

  /// title of preference
  final UserProfilePreferenceTitle title;
}
