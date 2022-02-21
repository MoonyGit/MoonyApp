/// Relation State info for a user
enum RelationState {
  /// In relation
  taken,

  /// Available
  alone,

  /// Other
  other
}

/// Mapper extension for RelationState to String
extension RelationStateMapper on RelationState {
  String toUi() => name;
}

/// Mapper extension for List<RelationState> to Set<String>
extension RelationStateListMapper on List<RelationState> {
  Set<String> toUi() => map((RelationState state) => state.name).toSet();
}

/// Mapper extension for String to RelationState
extension RelationStateStringMapper on String {
  RelationState toRelationState() => RelationState.values.firstWhere(
      (RelationState element) => element.name == this,
      orElse: () => throw const FormatException());
}
