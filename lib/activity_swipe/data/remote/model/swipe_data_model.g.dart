// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swipe_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwipeItemDataModel _$SwipeItemDataModelFromJson(Map<String, dynamic> json) =>
    SwipeItemDataModel(
      creator: SwipeCreatorInfoDataModel.fromJson(
          json['creatorInfos'] as Map<String, dynamic>),
      activityId: json['id'] as String,
      activityTitle: json['title'] as String,
      activityDesc: json['desc'] as String,
      activityBudget:
          BudgetDataModel.fromJson(json['budget'] as Map<String, dynamic>),
      activityCategory:
          HobbyDataModel.fromJson(json['category'] as Map<String, dynamic>),
      activityParticipantNumber: json['maxParticipant'] as int,
      activityLocation:
          LocationDataModel.fromJson(json['location'] as Map<String, dynamic>),
      activityExpectedStartingDate: json['expectedStartingDate'] == null
          ? null
          : DateTime.parse(json['expectedStartingDate'] as String),
      activityLinkReference: json['referenceLink'] as String?,
      activityImage: json['image'] as String?,
    );

Map<String, dynamic> _$SwipeItemDataModelToJson(SwipeItemDataModel instance) =>
    <String, dynamic>{
      'creatorInfos': instance.creator,
      'id': instance.activityId,
      'title': instance.activityTitle,
      'desc': instance.activityDesc,
      'budget': instance.activityBudget,
      'category': instance.activityCategory,
      'maxParticipant': instance.activityParticipantNumber,
      'location': instance.activityLocation,
      'expectedStartingDate':
          instance.activityExpectedStartingDate?.toIso8601String(),
      'referenceLink': instance.activityLinkReference,
      'image': instance.activityImage,
    };
