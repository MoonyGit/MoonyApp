/// user profile activity model for ui
class UserProfileActivityItemUi {
  /// Constructor
  UserProfileActivityItemUi({
    required this.activityId,
    required this.activityName,
    required this.location,
    required this.numberWaitingPartner,
    required this.maxWaitingPartner,
    required this.delay,
  });

  /// activity id
  final String activityId;

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
