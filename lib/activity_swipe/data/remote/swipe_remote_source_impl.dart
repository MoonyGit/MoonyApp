import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/common/util/collection_ext.dart';
import 'package:moony_app/common/util/logger.dart';

import 'model/swipe_data_model.dart';

/// Swipe data source implementation
class SwipeRemoteSource implements ISwipeRemoteSource {
  /// Constructor
  SwipeRemoteSource(this._database);

  static const String activityCollection = "activities";
  static const String activityUserIdField = "creatorInfos.id";
  static const String activityUserPopularityField =
      "creatorInfos.popularityScore";
  static const String activityInteractionWithField = "interactionWith";
  static const String activityCurrentStateField = "currentState";
  static const String activityCurrentStateCreated = "created";

  final FirebaseFirestore _database;

  late Query _getNextSwipeItemListQuery;
  DocumentSnapshot? _getNextSwipeItemListLastDoc;

  @override
  Future<bool> setSwipeDecision(
      {required String userId,
        required String activityId,
        required Decision decision}) async {

    // await _database
    //     .collection(activityCollection).doc(activityId).update(data);

    Logger.d(
        "setSwipeDecision userid: $userId, activityId: $activityId, decision: $decision");

    return true;
  }

  @override
  Future<List<SwipeItemDataModel>> getNextSwipeItemList(
      {required int number, required String userId}) {
    Logger.d("getNextSwipeItemList called");
    _getNextSwipeItemListQuery = _database
        .collection(activityCollection)
        .limit(number)
    /// TODO: fix != and not in incompatibility
        .where(activityUserIdField, isNotEqualTo: userId)
        .where(activityInteractionWithField, whereNotIn: [userId])
        .where(activityCurrentStateField, isEqualTo: activityCurrentStateCreated)
    ///TODO: where(filter)
        .orderBy(activityUserPopularityField);
    _getNextSwipeItemListLastDoc?.let((DocumentSnapshot<Object?> doc) =>
    _getNextSwipeItemListQuery =
        _getNextSwipeItemListQuery.startAfterDocument(doc));
    return _getNextSwipeItemListQuery
        .withConverter<SwipeItemDataModel?>(
        fromFirestore: (DocumentSnapshot<Map<String, dynamic>> doc, _) =>
            doc.data()?.let((Map<String, dynamic> json) =>
                SwipeItemDataModel.fromJson(json, doc.id)),
        toFirestore: (SwipeItemDataModel? swipeItem, _) => {})
        .get()
        .then((QuerySnapshot<SwipeItemDataModel?> value) {
      Logger.d("getNextSwipeItemList received: $value");
      _getNextSwipeItemListLastDoc = value.docs.last;
      return value.docs
          .mapNotNull<SwipeItemDataModel>(
              (QueryDocumentSnapshot<SwipeItemDataModel?> doc) => doc.data())
          .toList();
    });
  }

  @override
  Future<SwipeItemDataModel?> getSwipeItemById({required String id}) {
    // TODO: implement getSwipeItemById
    throw UnimplementedError();
  }
}