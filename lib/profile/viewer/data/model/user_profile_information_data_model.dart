import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
/// User profile information entity
class UserProfileInformationDataModel {
  /// Constructor
  UserProfileInformationDataModel({
    required this.description,
  });

  /// User's description
  final String description;
}
