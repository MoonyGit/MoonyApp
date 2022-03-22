import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/base/domain/model/entity.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/activity/model/description.dart';
import 'package:moony_app/common/domain/activity/model/participant_number.dart';
import 'package:moony_app/common/domain/activity/model/starting_date.dart';
import 'package:moony_app/common/domain/activity/model/title.dart';
import 'package:moony_app/common/domain/model/address.dart';


/// Small user part for activity swipe
class SwipeActivityInfo extends Entity<String> {
  /// Constructor
  SwipeActivityInfo(
      {required this.id,
        required this.title,
        required this.desc,
        required this.budget,
        required this.category,
        required this.participantNumber,
        required this.location,
        this.expectedStartingDate,
        this.linkReference,
        this.image});

  @override
  final String id;

  /// title
  final ActivityTitle title;

  /// description
  final ActivityDescription desc;

  /// budget
  final Budget budget;

  /// Categories
  final ActivityType category;

  /// number of participants
  final ParticipantNumber participantNumber;

  /// location of activity (or by default, user)
  final Address location;

  /// Optional: date of activity should happened
  final ExpectedStartingDate? expectedStartingDate;

  /// Optional: uri reference of activity (ex: concert Angel -> Angel website)
  final Uri? linkReference;

  /// Optional: uri image of activity
  final Uri? image;
}