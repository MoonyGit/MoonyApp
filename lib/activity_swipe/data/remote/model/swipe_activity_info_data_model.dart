import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_activity_info.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/activity/remote/budget_data_model.dart';
import 'package:moony_app/common/data/model/address_data_model.dart';
import 'package:moony_app/common/domain/activity/model/description.dart';
import 'package:moony_app/common/domain/activity/model/participant_number.dart';
import 'package:moony_app/common/domain/activity/model/starting_date.dart';
import 'package:moony_app/common/domain/activity/model/title.dart';

/// Activity info for swipe
class SwipeActivityInfoDataModel {
  /// Constructor
  SwipeActivityInfoDataModel({
    required this.id,
    required this.title,
    required this.desc,
    required this.budget,
    required this.category,
    required this.participantNumber,
    required this.location,
    this.expectedStartingDate,
    this.linkReference,
    this.image,
  });

  /// activity id
  final String id;

  /// activity title
  final String title;

  /// activity desc
  final String desc;

  /// Budget
  final BudgetDataModel budget;

  /// Category
  final ActivityTypeData category;

  /// number of participants
  final int participantNumber;

  /// location of activity or user by default
  final AddressDataModel location;

  /// Optional: date of activity should happened
  final DateTime? expectedStartingDate;

  /// Optional: uri reference of activity (ex: concert Angel -> Angel website)
  final String? linkReference;

  /// Optional: uri image of activity
  final String? image;
}

/// Activity info mapper
extension SwipeActivityInfoMapper on SwipeActivityInfoDataModel {
  /// Mapper method
  SwipeActivityInfo toDomain() => SwipeActivityInfo(
        id: id,
        title: ActivityTitle(input: title),
        desc: ActivityDescription(input: desc),
        budget: budget.toDomain(),
        category: category.toDomain(),
        participantNumber: ParticipantNumber(input: participantNumber),
        location: location.toDomain(),
        expectedStartingDate: expectedStartingDate
            ?.let((DateTime it) => ExpectedStartingDate(input: it)),
        linkReference: linkReference?.let((String it) => Uri.parse(it)),
        image: image?.let((String uri) => Uri.parse(uri)),
      );
}
