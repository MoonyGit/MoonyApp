import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/activity_creation/domain/model/participant_attribute.dart';
import 'package:moony_app/common/data/address_data_model.dart';
import 'package:moony_app/common/data/user/remote/hobby_data_model.dart';

part 'activity_data_model.g.dart';

/// Activity data model
@JsonSerializable()
class ActivityCreationDataModel {
  /// Convert Object from json
  factory ActivityCreationDataModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityCreationDataModelFromJson(json);

  /// Convert object to json
  Map<String, dynamic> toJson() => _$ActivityCreationDataModelToJson(this);

  /// Activity Data Model
  const ActivityCreationDataModel({
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
  final String imageUri;

  ///Title
  final String title;

  /// Description of the activity
  final String description;

  /// Optional: date of activity_creation should happened
  final DateTime? expectedStartingDate;

  /// Optional: uri reference of activity_creation (ex: concert Angel -> Angel website)
  final String? linkReference;

  /// Categories
  final HobbyDataModel category;

  /// Optional: location of the activity
  final AddressDataModel location;

  /// Budget level of the activity
  final int budgetWeight;

  /// number of participants
  final int maxParticipants;

  /// Filter of participants (gender, relation state, ...)
  final List<ParticipantAttribute> filterParticipant;
}
