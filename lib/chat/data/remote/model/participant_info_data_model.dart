import 'package:json_annotation/json_annotation.dart';
import 'package:moony_app/chat/domain/model/participant_info.dart';

part 'participant_info_data_model.g.dart';

@JsonSerializable()
/// Budget class
class ParticipantInfoDataModel {
  /// Constructor
  ParticipantInfoDataModel({
    required this.id,
    required this.imageUri,
    required this.name,
  });

  /// Participant's id
  final String id;

  /// Participant's image
  final String imageUri;

  /// Participant's name
  final String name;

  /// Convert Object from json
  factory ParticipantInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantInfoDataModelFromJson(json);

  /// Convert object to json
  Map<String, dynamic> toJson() => _$ParticipantInfoDataModelToJson(this);
}

/// Swipe item mapper
extension ParticipantInfoMapper on ParticipantInfoDataModel {
  /// Mapper method
  ParticipantInfo toDomain() =>
      ParticipantInfo(id: id, name: name, imageUri: imageUri as Uri);
}

/// Swipe item list mapper
extension ParticipantInfoListMapper on List<ParticipantInfoDataModel> {
  /// Mapper method
  List<ParticipantInfo> toDomain() =>
      map((ParticipantInfoDataModel item) => item.toDomain()).toList();
}
