import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moony_app/activity_swipe/domain/model/swipe_item.dart';
import 'package:moony_app/common/domain/user/model/hobby.dart';

part 'swipe_card_model.freezed.dart';

/// Model ui for swipe card
class SwipeCardModel {
  /// Constructor
  SwipeCardModel({
    required this.activityId,
    required this.userImagesWithInfo,
    required this.activityImagesWithInfo,
    required this.activityCategoryImageUri
  });

  /// activity id
  final String activityId;
  /// activity category image
  final String activityCategoryImageUri;
  /// user cards (photo with data)
  final List<CardInfoModel> userImagesWithInfo;
  /// activity card
  final CardInfoModel activityImagesWithInfo;
}

@freezed

/// Info card model
class CardInfoModel with _$CardInfoModel {
  /// main info card (1st page)
  const factory CardInfoModel.mainInfo({
    required String imageUrl,
    required String activityCategoryImageUri,
    required String userName,
    required int userAge,
    required bool userVerified,
    required String activityName,
    required int activityTargetNumber,
    required String? activityLocation,
    required DateTime? activityTargetDate,
  }) = CardInfoModelActivityInfo;

  /// user info card (2st page)
  const factory CardInfoModel.userInfo({
    required String imageUrl,
    required String userName,
    required int userAge,
    required bool userVerified,
    required String location,
    required int distance,
  }) = CardInfoModelUserInfo;

  /// user hobbies card (3rd page)
  const factory CardInfoModel.userHobby({
    required String imageUrl,
    required String userName,
    required int userAge,
    required bool userVerified,
    required List<String> userHobbyList,
  }) = CardInfoModelUserHobby;


  /// activity info card (back page)
  const factory CardInfoModel.activityDesc({
    required String imageUrl,
    required String activityName,
    required String activityCategoryImageUri,
    required String? activityMoreInfoLink,
    required String activityDesc}) = CardInfoModelActivityDesc;
}

/// Swipe item Ui mapper
extension SwipeItemMapper on SwipeItem {
  /// Mapper method
  SwipeCardModel toUi() => SwipeCardModel(
      activityId: activity.id,
      activityCategoryImageUri: activity.category.image.toString(),
      userImagesWithInfo: _getUserCards(this),
      activityImagesWithInfo: _getActivityCard(this));

  List<CardInfoModel> _getUserCards(SwipeItem item) =>
      item.creator.imageList.mapIndexed((int index, Uri elem) {
        switch (index) {
          case 0:
            return _getMainUserCard(item, elem);
          case 1:
            return _getUserInfoCard(item, elem);
          default:
            return _getUserHobbiesCard(item, elem);
        }
      }).toList();

  CardInfoModel _getActivityCard(SwipeItem item) => CardInfoModel.activityDesc(
      imageUrl: item.activity.image?.toString() ??
          item.creator.imageList.first.toString(),
      activityName: item.activity.title.getOrCrash(),
      activityMoreInfoLink: item.activity.linkReference?.toString(),
      activityCategoryImageUri: item.activity.category.image.toString(),
      activityDesc: item.activity.desc.getOrCrash());

  CardInfoModel _getMainUserCard(SwipeItem item, Uri image) =>
      CardInfoModel.mainInfo(
          imageUrl: image.toString(),
          userName: item.creator.name.getOrCrash(),
          userAge:
          DateTime.now().year - item.creator.birthdate.getOrCrash().year,
          userVerified: item.creator.verified,
          activityName: item.activity.title.getOrCrash(),
          activityCategoryImageUri: item.activity.category.image.toString(),
          activityTargetNumber: item.activity.participantNumber.getOrCrash(),
          activityLocation: item.activity.location.city.getOrCrash(),
          activityTargetDate: item.activity.expectedStartingDate?.getOrCrash());

  CardInfoModel _getUserInfoCard(SwipeItem item, Uri image) =>
      CardInfoModel.userInfo(
          imageUrl: image.toString(),
          userName: item.creator.name.getOrCrash(),
          userAge:
          DateTime.now().year - item.creator.birthdate.getOrCrash().year,
          userVerified: item.creator.verified,
          location: item.creator.location.city.getOrCrash(),
          distance: 12);

  CardInfoModel _getUserHobbiesCard(SwipeItem item, Uri image) =>
      CardInfoModel.userHobby(
          imageUrl: image.toString(),
          userName: item.creator.name.getOrCrash(),
          userAge:
          DateTime.now().year - item.creator.birthdate.getOrCrash().year,
          userVerified: item.creator.verified,
          userHobbyList:
          item.creator.hobbyList.map((Hobby elem) => elem.title).toList());
}