import 'package:moony_app/profile/viewer/domain/model/control/user_profile_moony_message.dart';
import 'package:moony_app/profile/viewer/domain/model/user_profile_preference_entity.dart';

/// Model entity that contains all preferences available and with user choice
/// Contains also the message of Moony
class UserProfileAggregatePreferenceEntity {
  /// constructor
  UserProfileAggregatePreferenceEntity({
    required this.items,
    required this.moonyMessage,
  });

  /// list of items with user preference choice
  final List<UserProfilePreferenceEntity> items;

  /// Moony message
  final UserProfileMoonyMessage moonyMessage;
}
