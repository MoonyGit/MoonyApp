import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'model/swipe_data_model.dart';

/// Swipe data source
abstract class ISwipeRemoteSource {

  /// Provide next list of swipe item (paginated)
  Future<List<SwipeItemDataModel>> getNextSwipeItemList(
      {required int number, required String userId});

  /// Get swipe item details
  Future<SwipeItemDataModel?> getSwipeItemById({required String id});

  /// Set swipe decision (like, nope, superlike)
  Future<bool> setSwipeDecision(
      {required String userId,
      required String activityId,
      required Decision decision});
}
