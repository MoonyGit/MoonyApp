import 'package:moony_app/common/domain/activity/model/budget.dart';
import 'package:moony_app/common/domain/activity/model/category.dart';
import 'package:moony_app/common/domain/activity/model/description.dart';
import 'package:moony_app/common/domain/activity/model/participant_number.dart';
import 'package:moony_app/common/domain/activity/model/starting_date.dart';
import 'package:moony_app/common/domain/activity/model/title.dart';
import 'package:moony_app/common/domain/model/address.dart';
import 'package:moony_app/activity_creation/domain/model/participant_attribute.dart';
import 'package:moony_app/common/domain/user/model/hobby.dart';

/// Small user part for activity swipe
class ActivityCreationModel {
  /// Activity Data Model
  const ActivityCreationModel({
    required this.creatorId,
    required this.imageUri,
    required this.title,
    required this.description,
    required this.expectedStartingDate,
    this.linkReference,
    required this.category,
    required this.location,
    required this.budget,
    required this.participantNumber,
    required this.filterParticipant,
  });

  ///User creator id
  final String creatorId;

  ///Image Uri
  final Uri imageUri;

  ///Title
  final ActivityTitle title;

  /// Description of the activity
  final ActivityDescription description;

  /// Optional: date of activity should happened
  final ExpectedStartingDate? expectedStartingDate;

  /// Optional: uri reference of activity_creation
  /// (ex: concert Angel -> Angel website)
  final Uri? linkReference;

  /// Categories
  final ActivityType category;

  /// Optional: location of the activity
  final Address location;

  /// Budget level of the activity
  final Budget budget;

  /// number of participants
  final ParticipantNumber participantNumber;

  /// Filter of participants (gender, relation state, ...)
  final Set<ParticipantAttribute> filterParticipant;
}
