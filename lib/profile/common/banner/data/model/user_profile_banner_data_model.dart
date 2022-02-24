import 'package:moony_app/common/data/model/location_data_model.dart';

/// User profile activity information data model
class UserProfileBannerDataModel {
  /// Constructor
  UserProfileBannerDataModel({
    required this.firstName,
    required this.lastName,
    required this.birthdate,
    required this.pictures,
    required this.location,
    required this.froonysNumber,
    required this.activityNumber,
  });

  /// User's first name
  final String firstName;

  /// User's last name
  final String lastName;

  /// User's age
  final DateTime birthdate;

  /// User's pictures
  final String pictures;

  /// User's location
  final LocationDataModel location;

  /// User's froonys number
  final int froonysNumber;

  /// User's activity number
  final int activityNumber;
}
