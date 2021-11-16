import 'package:dartz/dartz.dart';
import 'package:moony_app/activity_swipe/domain/model/location.dart';
import 'package:moony_app/common/base/domain/model/entity.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/domain/user/model/hobby.dart';

import 'budget.dart';

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
  final Hobby category;

  /// number of participants
  final ParticipantNumber participantNumber;

  /// location of activity (or by default, user)
  final Location location;

  /// Optional: date of activity should happened
  final ExpectedStartingDate? expectedStartingDate;

  /// Optional: uri reference of activity (ex: concert Angel -> Angel website)
  final Uri? linkReference;

  /// Optional: uri image of activity
  final Uri? image;
}


/// Participant number failure
class ParticipantNumberFailure extends Failure {}

/// Name value object class
class ParticipantNumber extends ValueObject<ParticipantNumberFailure, int> {
  const ParticipantNumber._(this.value);

  /// Factory constructor
  factory ParticipantNumber({required int input}) {
    if (input < minParticipantNumber || input > maxParticipantNumber) {
      return ParticipantNumber._(
        left(
          ParticipantNumberFailure(),
        ),
      );
    } else {
      return ParticipantNumber._(right(input));
    }
  }

  @override
  final Either<ParticipantNumberFailure, int> value;

  /// Max participant number in general
  static const int maxParticipantNumber = 19;
  /// Min participant number in general
  static const int minParticipantNumber = 1;
}

/// ExpectedStartingDate failure
class ExpectedStartingDateFailure extends Failure {}

/// Name value object class
class ExpectedStartingDate
    extends ValueObject<ExpectedStartingDateFailure, DateTime> {
  const ExpectedStartingDate._(this.value);

  /// Factory constructor
  factory ExpectedStartingDate({required DateTime input}) {
    if (input.isBefore(DateTime.now())) {
      return ExpectedStartingDate._(
        left(
          ExpectedStartingDateFailure(),
        ),
      );
    } else {
      return ExpectedStartingDate._(right(input));
    }
  }

  @override
  final Either<ExpectedStartingDateFailure, DateTime> value;
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

  /// Max characters in title
  static const int maxChar = 50;
  /// Min characters in title
  static const int minChar = 10;
}

/// ActivityTitle failure
class ActivityDescriptionFailure extends Failure {}

/// ActivityTitle value object class
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

  /// Max characters in desc
  static const int maxChar = 300;
  /// Min characters in desc
  static const int minChar = 30;
}