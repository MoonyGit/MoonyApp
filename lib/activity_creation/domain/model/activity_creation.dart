import 'package:dartz/dartz.dart';
import 'package:moony_app/common/domain/location/address.dart';
import 'package:moony_app/activity_creation/domain/model/participant_attribute.dart';
import 'package:moony_app/common/base/domain/model/entity.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
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
    required this.budgetWeight,
    required this.maxParticipants,
    required this.filterParticipant,});

  ///User creator id
  final String creatorId;

  ///Image Uri
  final Uri imageUri;

  ///Title
  final ActivityTitle title;

  /// Description of the activity
  final ActivityDescription description;

  /// Optional: date of activity_creation should happened
  final ActivityStartingDate? expectedStartingDate;

  /// Optional: uri reference of activity_creation (ex: concert Angel -> Angel website)
  final Uri? linkReference;

  /// Categories
  final Hobby category;

  /// Optional: location of the activity
  final Address location;

  /// Budget level of the activity
  final ActivityBudgetWeight budgetWeight;

  /// number of participants
  final ActivityMaxParticipantsNumber maxParticipants;

  /// Filter of participants (gender, relation state, ...)
  final List<ParticipantAttribute> filterParticipant;
}


/// Participant number failure
class ActivityMaxParticipantsNumberFailure extends Failure {}

/// Name value object class
class ActivityMaxParticipantsNumber extends ValueObject<ActivityMaxParticipantsNumberFailure, int> {
  const ActivityMaxParticipantsNumber._(this.value);

  /// Factory constructor
  factory ActivityMaxParticipantsNumber({required int input}) {
    if (input < minParticipantNumber || input > maxParticipantNumber) {
      return ActivityMaxParticipantsNumber._(
        left(
          ActivityMaxParticipantsNumberFailure(),
        ),
      );
    } else {
      return ActivityMaxParticipantsNumber._(right(input));
    }
  }

  @override
  final Either<ActivityMaxParticipantsNumberFailure, int> value;

  static const int minParticipantNumber = 1;
  static const int maxParticipantNumber = 4;
}

/// ActivityTitle failure
class ActivityTitleFailure extends Failure {}

/// ActivityTitle value object class
class ActivityTitle extends ValueObject<ActivityTitleFailure, String> {
  const ActivityTitle._(this.value);

  /// Factory constructor
  factory ActivityTitle({required String input}) {
    if (input.length > maxChar && input.length < minChar) {
      return ActivityTitle._(
        left(
          ActivityTitleFailure(),
        ),
      );
    } else {
      return ActivityTitle._(right(input));
    }
  }

  @override
  final Either<ActivityTitleFailure, String> value;

  static const int maxChar = 50;
  static const int minChar = 10;
}

/// Activity description failure
class ActivityDescriptionFailure extends Failure {}

/// Activity description value object class
class ActivityDescription
    extends ValueObject<ActivityDescriptionFailure, String> {
  const ActivityDescription._(this.value);

  /// Factory constructor
  factory ActivityDescription({required String input}) {
    if (input.length > maxChar && input.length < minChar) {
      return ActivityDescription._(
        left(
          ActivityDescriptionFailure(),
        ),
      );
    } else {
      return ActivityDescription._(right(input));
    }
  }

  @override
  final Either<ActivityDescriptionFailure, String> value;

  static const int maxChar = 300;
  static const int minChar = 30;
}

/// Activity Date failure
abstract class ActivityStartingDateFailure extends Failure {}
class ActivityStartingDateBeforeTodayFailure
    extends ActivityStartingDateFailure {}
class ActivityStartingDateTooLateFailure extends ActivityStartingDateFailure {}

class ActivityStartingDate
    extends ValueObject<ActivityStartingDateFailure, DateTime> {
  const ActivityStartingDate._(this.value);

  /// Factory constructor
  factory ActivityStartingDate({required DateTime input}) {
    if (input.isBefore(minDate)) {
      return ActivityStartingDate._(
        left(
          ActivityStartingDateBeforeTodayFailure(),
        ),
      );
    } else if (input.isAfter(maxDate)) {
      return ActivityStartingDate._(
        left(
          ActivityStartingDateTooLateFailure(),
        ),
      );
    } else {
      return ActivityStartingDate._(right(input));
    }
  }

  @override
  final Either<ActivityStartingDateFailure, DateTime> value;

  static final DateTime minDate = DateTime.now();
  static final DateTime maxDate = minDate.add(const Duration(days: 60));
}


/// Activity budget failure
class ActivityBudgetWeightFailure extends Failure {}

/// ActivityTitle value object class
class ActivityBudgetWeight
    extends ValueObject<ActivityBudgetWeightFailure, int> {
  const ActivityBudgetWeight._(this.value);

  /// Factory constructor
  factory ActivityBudgetWeight({required int input}) {
    if (input < minWeight && input > maxWeight) {
      return ActivityBudgetWeight._(
        left(
          ActivityBudgetWeightFailure(),
        ),
      );
    } else {
      return ActivityBudgetWeight._(right(input));
    }
  }

  @override
  final Either<ActivityBudgetWeightFailure, int> value;

  static const int minWeight = 0;
  static const int maxWeight = 3;
}
