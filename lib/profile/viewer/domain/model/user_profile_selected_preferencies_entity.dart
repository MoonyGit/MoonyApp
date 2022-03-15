import 'package:moony_app/common/base/domain/model/entity.dart';

/// Data class that represent the user preference selected
class UserProfileSelectedPreferenceEntity extends Entity<String> {
  /// Default constructor
  UserProfileSelectedPreferenceEntity({required this.id});

  @override
  final String id;
}
