import 'package:moony_app/common/domain/model/activity_delay.dart';
import 'package:moony_app/common/domain/model/activity_name.dart';
import 'package:moony_app/common/domain/model/activity_waiting_participant_number.dart';
import 'package:moony_app/common/domain/model/location.dart';

/// User profile activity information entity
class UserProfileActivityEntity {
  /// Constructor
  UserProfileActivityEntity({
    required this.activityId,
    required this.activityName,
    required this.location,
    required this.activityWaitingParticipant,
    required this.delayInDays,
  });

  /// Activity id
  final String activityId;

  /// activity name
  final ActivityName activityName;

  /// activity location name
  final Location location;

  /// activity maximum partner
  final ActivityWaitingParticipant activityWaitingParticipant;

  /// activity delay in days before ending management
  final ActivityDelay delayInDays;
}
