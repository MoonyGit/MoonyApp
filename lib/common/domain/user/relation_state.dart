import 'package:freezed_annotation/freezed_annotation.dart';

part 'relation_state.freezed.dart';

@freezed
/// Relation State enum
class RelationState with _$RelationState {
  /// Single
  const factory RelationState.alone({@Default(RelationState.aloneId) int? id})
  = Alone;

  /// In a relationship
  const factory RelationState.taken({@Default(RelationState.takenId) int? id})
  = Taken;

  /// Not specified
  const factory RelationState.secret({@Default(RelationState.secretId) int? id})
  = Secret;

  /// Get RelationState from id
  static RelationState fromId({required int id}) {
    switch(id) {
      case aloneId: return const Alone();
      case takenId: return const Taken();
      case secretId: return const Secret();
      default: return const Secret();
    }
  }
  /// RelationState alone id
  static const int aloneId = 0;
  /// RelationState taken id
  static const int takenId = 1;
  /// RelationState secret id
  static const int secretId = 2;
  /// RelationState default id
  static const int defaultId = secretId;
}