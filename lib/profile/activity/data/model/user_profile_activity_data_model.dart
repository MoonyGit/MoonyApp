import 'package:moony_app/common/data/model/location_data_model.dart';

/// User profile activity information entity
class UserProfileActivityDataModel {
  /// Constructor
  UserProfileActivityDataModel({
    required this.activityId,
    required this.activityName,
    required this.location,
    required this.numberWaitingPartner,
    required this.delay,
  });

  /// activity id
  final String activityId;

  /// activity name
  final String activityName;

  /// activity location name
  final LocationDataModel location;

  /// activity number waiting partner
  final int numberWaitingPartner;

  /// activity delay before ending management
  final int delay;
}
