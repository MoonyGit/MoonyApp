import 'package:moony_app/common/base/domain/model/entity.dart';

/// User profile category entity
class UserProfileCategoryEntity extends Entity<String> {
  /// Constructor
  UserProfileCategoryEntity({
    required this.id,
    required this.title,
    required this.icon,
  });

  @override
  final String id;

  /// Name of category
  final String title;

  /// Icon
  final String icon;
}
