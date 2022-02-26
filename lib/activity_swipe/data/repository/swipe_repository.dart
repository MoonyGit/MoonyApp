import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/data/remote/model/swipe_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_creator_info_detail.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item_detail.dart';
import 'package:moony_app/activity_swipe/domain/repository/swipe_repositories_facade.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';
import 'package:moony_app/common/data/model/address_data_model.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/hobby_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/domain/user/model/name.dart';
import 'package:moony_app/common/util/logger.dart';

/// Implementation of ISwipeRepository
class SwipeRepository
    implements ISwipeItemRepository, ISwipeDecisionRepository {
  /// Constructor
  SwipeRepository(this._swipeSource, this._authSource, this._userRemoteSource);

  final ISwipeRemoteSource _swipeSource;
  final AuthDataSource _authSource;
  final UserRemoteSource _userRemoteSource;

  @override
  Future<Either<Failure, List<SwipeItem>>> getSwipeItemList({
    required int number,
  }) async =>

      /// TODO: try catch error transform either
      (await _getUserId())?.let(
        (String id) => _swipeSource
            .getNextSwipeItemList(number: number, userId: id)
            .then((List<SwipeItemDataModel> value) => right(value.toDomain())),
      ) ??
      left(const Failure());

  @override
  Future<Either<Failure, SwipeItemDetail>> getSwipeItemById({
    required String id,
  }) async {
    /// TODO: try catch error transform either
    final SwipeItemDataModel? swipeData =
        await _swipeSource.getSwipeItemById(id: id);

    Logger.d("getSwipeItemById swipeData $swipeData");
    return swipeData?.let((SwipeItemDataModel swipe) async {
          final UserDataModel? userDataModel =
              await _userRemoteSource.getById(id: swipe.creator.id);

          Logger.d("getSwipeItemById userDataModel $userDataModel");
          if (userDataModel != null) {
            return right(
              SwipeItemDetailMapper.toDomain(
                user: userDataModel,
                swipeData: swipeData,
              ),
            );
          } else {
            return left(const Failure());
          }
        }) ??
        left(const Failure());
  }

  @override
  Future<Failure?> setSwipeDecision({
    required String activityId,
    required Decision decision,
  }) async =>

      /// TODO: try catch error transform
      (await _getUserId())?.let(
        (String id) => _swipeSource
            .setSwipeDecision(
              userId: id,
              activityId: activityId,
              decision: decision,
            )
            .then((bool value) => value == true ? null : const Failure()),
      );

  Future<String?> _getUserId() async =>
      (await _authSource.getSignedInUser())?.id;
}

/// Custom Mapper class to create SwipeDetail Item
/// with UserDataModel and SwipeItemDataModel
abstract class SwipeItemDetailMapper {
  /// Mapper methode
  static SwipeItemDetail toDomain({
    required UserDataModel user,
    required SwipeItemDataModel swipeData,
  }) {
    return SwipeItemDetail(
      id: swipeData.activityId,
      activity: swipeData.activityToDomain(),
      creator: SwipeCreatorInfoDetail(
        id: swipeData.creator.id,
        verified: swipeData.creator.verified,
        location: swipeData.creator.location.toDomain(),
        hobbyList: swipeData.creator.hobbyList.toDomain(),
        gender: swipeData.creator.gender.toDomain(),
        birthdate: Birthdate(input: swipeData.creator.birthdate),
        imageList: swipeData.creator.imageList
            .map((String uri) => Uri.parse(uri))
            .toList(),
        name: Name(
          input: swipeData.creator.name,
        ),
      ),
    );
  }
}
