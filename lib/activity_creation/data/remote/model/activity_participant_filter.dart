import 'package:json_annotation/json_annotation.dart';

/// Participant attribute used for filtering on activities

@JsonEnum()
enum ParticipantAttributeData {
  /// Gender female
  female,
  /// Gender male
  male,
  /// RelationState single
  single,
  /// RelationState taken
  couple,
  /// Sexual orientation hetero
  hetero,
  /// Sexual orientation homo
  homo,
}
