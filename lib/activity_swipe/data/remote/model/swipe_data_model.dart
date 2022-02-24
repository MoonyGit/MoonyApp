import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/data/model/location_data_model.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_activity_info.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item.dart';
import 'package:moony_app/common/data/user/remote/hobby_data_model.dart';

import 'budget_data_model.dart';
import 'swipe_creator_info_data_model.dart';

part 'swipe_data_model.g.dart';

/// Activity data class
@JsonSerializable()
class SwipeItemDataModel {
  /// Constructor
  SwipeItemDataModel(
      {required this.creator,
      required this.activityId,
      required this.activityTitle,
      required this.activityDesc,
      required this.activityBudget,
      required this.activityCategory,
      required this.activityParticipantNumber,
      required this.activityLocation,
      this.activityExpectedStartingDate,
      this.activityLinkReference,
      this.activityImage});

  /// Convert Object from json
  factory SwipeItemDataModel.fromJson(
      Map<String, dynamic> json, String activityId) =>
      json.let((Map<String, dynamic> it) {
        json.putIfAbsent("id", () => activityId);
        return _$SwipeItemDataModelFromJson(json);
      });

  /// User
  @JsonKey(name: "creatorInfos")
  final SwipeCreatorInfoDataModel creator;

  /// activity id
  @JsonKey(name: "id")
  final String activityId;

  /// activity title
  @JsonKey(name: "title")
  final String activityTitle;

  /// activity desc
  @JsonKey(name: "desc")
  final String activityDesc;

  /// activity desc
  @JsonKey(name: "budget")
  final BudgetDataModel activityBudget;

  /// Category
  @JsonKey(name: "category")
  final HobbyDataModel activityCategory;

  /// number of participants
  @JsonKey(name: "maxParticipant")
  final int activityParticipantNumber;

  /// location of activity or user by default
  @JsonKey(name: "location")
  final LocationDataModel activityLocation;

  /// Optional: date of activity should happened
  @JsonKey(name: "expectedStartingDate")
  final DateTime? activityExpectedStartingDate;

  /// Optional: uri reference of activity (ex: concert Angel -> Angel website)
  @JsonKey(name: "referenceLink")
  final String? activityLinkReference;

  /// Optional: uri image of activity
  @JsonKey(name: "image")
  final String? activityImage;
}

/// Swipe item mapper
extension SwipeItemMapper on SwipeItemDataModel {
  /// Mapper method
  SwipeItem toDomain() => SwipeItem(
      id: activityId,
      creator: creator.toDomain(),
      activity: activityToDomain());

  /// Mapper method for activity fields
  SwipeActivityInfo activityToDomain() => SwipeActivityInfo(
      id: activityId,
      title: ActivityTitle(input: activityTitle),
      desc: ActivityDescription(input: activityDesc),
      budget: activityBudget.toDomain(),
      category: activityCategory.toEntity(),
      participantNumber: ParticipantNumber(input: activityParticipantNumber),
      location: activityLocation.toDomain(),
      expectedStartingDate: activityExpectedStartingDate
          ?.let((DateTime it) => ExpectedStartingDate(input: it)),
      linkReference: activityLinkReference?.let((String it) => Uri.parse(it)),
      image: activityImage?.let((String uri) => Uri.parse(uri)));
}

/// Swipe item list mapper
extension SwipeItemListMapper on List<SwipeItemDataModel> {
  /// Mapper method
  List<SwipeItem> toDomain() =>
      map((SwipeItemDataModel item) => item.toDomain()).toList();
}
