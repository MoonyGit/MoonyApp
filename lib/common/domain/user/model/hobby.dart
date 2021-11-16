import 'package:moony_app/common/base/domain/model/entity.dart';

/// Hobby entity
class Hobby extends Entity<String> {
  /// Constructor
  Hobby(
      {required this.id,
      required this.title,
      required this.image,
      required this.expirationDate});

  @override
  final String id;

  /// Title of the hobby
  final String title;

  /// Uri of the image
  final Uri image;

  /// Expiration date
  final DateTime expirationDate;
}