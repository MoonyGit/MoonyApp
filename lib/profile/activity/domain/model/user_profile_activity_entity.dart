import 'package:moony_app/common/base/domain/model/entity.dart';

/// User profile activity information entity
class UserProfileActivityEntity extends Entity<String> {
  /// Constructor
  UserProfileActivityEntity({
    required this.id,
    required this.activityName,
    required this.location,
    required this.numberWaitingPartner,
    required this.maxWaitingPartner,
    required this.delay,
  });

  @override
  final String id;

  /// activity name
  final String activityName;

  /// activity location name
  final String location;

  /// activity number waiting partner
  final int numberWaitingPartner;

  /// activity maximum partner
  final int maxWaitingPartner;

  /// activity delay before ending management
  final int delay;
}
