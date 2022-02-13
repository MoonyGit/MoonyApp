import 'package:moony_app/common/base/domain/model/entity.dart';

/// User profile activity information entity
class UserProfileBannerEntity extends Entity<String> {
  /// Constructor
  UserProfileBannerEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.pictures,
    required this.location,
    required this.froonysNumber,
    required this.activityNumber,
  });

  @override
  final String id;

  /// User's first name
  final String firstName;

  /// User's last name
  final String lastName;

  /// User's age
  final String age;

  /// User's pictures
  final Uri pictures;

  /// User's location
  final String location;

  /// User's froonys number
  final int froonysNumber;

  /// User's activity number
  final int activityNumber;
}
