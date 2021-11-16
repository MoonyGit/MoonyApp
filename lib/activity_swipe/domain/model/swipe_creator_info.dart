import 'package:moony_app/activity_swipe/domain/model/location.dart';
import 'package:moony_app/common/base/domain/model/entity.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/gender.dart';
import 'package:moony_app/common/domain/user/model/hobby.dart';
import 'package:moony_app/common/domain/user/model/name.dart';

/// Small user part for swipe
class SwipeCreatorInfo extends Entity<String> {
  /// Constructor
  SwipeCreatorInfo(
      {required this.id,
        required this.name,
        required this.birthdate,
        required this.verified,
        required this.location,
        required this.imageList,
        required this.hobbyList,
      required this.gender});

  @override
  final String id;

  /// User name
  final Name name;

  /// User age
  final Birthdate birthdate;

  /// User verified state
  final bool verified;

  /// User location
  final Location location;

  /// Image uri list
  final List<Uri> imageList;

  /// Hobby list
  final List<Hobby> hobbyList;

  /// Gender
  final Gender gender;
}