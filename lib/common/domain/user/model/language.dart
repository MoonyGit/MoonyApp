import 'package:moony_app/common/base/domain/model/entity.dart';

/// Language entity
class Language extends Entity<String> {
  /// Constructor
  Language({required this.id, required this.type, required this.title});

  @override
  final String id;

  /// Title of the hobby
  final String title;

  /// Expiration date
  final LanguageType type;
}

enum LanguageType {
  /// Oral
  oral,
  /// Sign
  sign,
}
