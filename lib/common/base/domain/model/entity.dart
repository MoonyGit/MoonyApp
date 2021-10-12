import 'package:meta/meta.dart';

/// An entity.
///
/// According to domain-driven design, entities are to be treated as immutable.
/// Additionally, they must be uniquely identifiable by their [id].
///
/// ```dart
/// class User implements Entity<int> {
///   final int id;
///   final String email;
///
///   const User(this.id, this.email);
/// }
/// ```
@immutable
abstract class Entity<Id> {
  /// This entity's unique ID
  Id get id;
}