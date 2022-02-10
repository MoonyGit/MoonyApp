import 'package:moony_app/activity_creation/domain/activity_creation_failure.dart';
import 'package:moony_app/activity_creation/domain/model/activity_creation.dart';

/// Activity creation repository
abstract class IActivityCreationRepository {
  /// Create or update activity if it exists
  Future<CreatingActivityFailure?> create(
      {required ActivityCreationModel activity});
}
