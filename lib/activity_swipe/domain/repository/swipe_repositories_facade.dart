import 'package:dartz/dartz.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item_detail.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// Swipe repository facade
abstract class ISwipeItemRepository {
  /// Request activity list that user can swipe
  Future<Either<Failure, List<SwipeItem>>> getSwipeItemList(
      {required int number});

  /// Request activity list that user can swipe
  Future<Either<Failure, SwipeItemDetail>> getSwipeItemById(
      {required String id});

}

/// Swipe repository facade
abstract class ISwipeDecisionRepository {
  /// Request activity list that user can swipe
  Future<Failure?> setSwipeDecision(
      {required String activityId, required Decision decision});
}
