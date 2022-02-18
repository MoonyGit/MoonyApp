import 'package:json_annotation/json_annotation.dart';
import 'package:moony_app/common/domain/user/model/relation_state.dart';

/// Relation State info for a user

@JsonEnum()
enum RelationStateDataModel {
  /// In relation
  taken,
  /// Available
  alone,
  /// Other
  other
}

/// Extension mapper domain to data
extension RelationStateDataMapper on RelationState {
  /// Mapper method
  RelationStateDataModel toData() {
    switch(this) {
      case RelationState.taken: return RelationStateDataModel.taken;
      case RelationState.alone: return RelationStateDataModel.alone;
      default: return RelationStateDataModel.other;
    }
  }
}

/// Extension mapper data to domain
extension RelationStateMapper on RelationStateDataModel {
  /// Mapper method
  RelationState toDomain() {
    switch(this) {
      case RelationStateDataModel.taken: return RelationState.taken;
      case RelationStateDataModel.alone: return RelationState.alone;
      default: return RelationState.other;
    }
  }
}
