import 'package:moony_app/common/domain/model/location.dart';
import 'package:moony_app/common/domain/model/user_activity.dart';
import 'package:moony_app/common/domain/model/user_froony.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/name.dart';

/// User profile activity information entity
class UserProfileBannerEntity {
  /// Constructor
  UserProfileBannerEntity({
    required this.firstName,
    required this.lastName,
    required this.birthdate,
    required this.pictures,
    required this.location,
    required this.froonysNumber,
    required this.activityNumber,
  });

  /// User's first name
  final Name firstName;

  /// User's last name
  final Name lastName;

  /// User's age
  final Birthdate birthdate;

  /// User's pictures
  final Uri pictures;

  /// User's location
  final Location location;

  /// User's froonys number
  final UserFroony froonysNumber;

  /// User's activity number
  final UserActivity activityNumber;
}
