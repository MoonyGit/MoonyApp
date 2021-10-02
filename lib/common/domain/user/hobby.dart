import 'package:moony_app/common/base/domain/entity.dart';

/// Hobby entity
class Hobby extends Entity<int> {

  /// Constructor
  Hobby({required this.id, required this.title, required this.image});

  @override
  final int id;

  /// Title of the hobby
  final String title;

  /// Uri of the image
  final Uri image;

}