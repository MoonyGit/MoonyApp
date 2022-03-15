import 'package:moony_app/profile/viewer/domain/model/control/user_profile_moony_message.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_raw_preference_entity.dart';

/// Model data that represent all possibility of preference
class UserProfileRawAggregatePreferenceEntity {
  /// constructor
  UserProfileRawAggregatePreferenceEntity(
      {required this.items, required this.moonyMessage});

  /// List of all preference possible
  final List<UserProfileRawPreferenceEntity> items;

  /// Moony message
  final UserProfileMoonyMessage moonyMessage;
}
