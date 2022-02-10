import 'package:collection/collection.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/data/remote/model/budget_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/model/swipe_location_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/hobby_data_model.dart';
import 'package:moony_app/common/data/user/remote/mock_user_remote_source_impl.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:uuid/uuid.dart';

import 'model/swipe_creator_info_data_model.dart';
import 'model/swipe_data_model.dart';

/// Swipe data source implementation
class MockSwipeRemoteSource implements ISwipeRemoteSource {
  final List<SwipeItemDataModel> _mockedList = <SwipeItemDataModel>[];

  @override
  Future<bool> setSwipeDecision(
      {required String userId,
        required String activityId,
        required Decision decision}) =>
      Future<bool>.value(true).also((Future<bool> it) {
        Logger.d(
            "setSwipeDecision userid: $userId, "
                "activityId: $activityId, decision: $decision");
      });

  @override
  Future<List<SwipeItemDataModel>> getNextSwipeItemList(
      {required int number, required String userId}) {
    return Future<List<SwipeItemDataModel>>.delayed(
        const Duration(seconds: 3),
            () => _mockedList
          ..clear()
          ..addAll(<SwipeItemDataModel>[
            for (int i = 0; i < number; i++) _generateSwipeItemMock(),
          ]));
  }

  @override
  Future<SwipeItemDataModel?> getSwipeItemById({required String id}) async =>
      _mockedList.firstWhereOrNull(
              (SwipeItemDataModel element) => element.activityId == id);

  SwipeItemDataModel _generateSwipeItemMock() => SwipeItemDataModel(
    creator: _generateCreatorInfo(),
    activityId: const Uuid().v4(),
    activityTitle: "Concert Shakira",
    activityBudget: BudgetDataModel(
        currency: "euros", isFree: false, lowerRange: 10, higherRange: 20),
    activityLocation: LocationDataModel(
        city: "Paris",
        zipCode: "78000",
        region: "Ile de France",
        country: "France"),
    activityExpectedStartingDate:
    DateTime.now().add(const Duration(days: 40)),
    activityLinkReference:
    "https://www.sortiraparis.com/loisirs/cinema/articles/197150-le-concert-el-dorado-de-shakira-au-cinema",
    activityImage:
    "https://www.cine-vox.com/evenement/Affiche_A3_-_Shakira_-_El_Dorado_World_Tour.jpg",
    activityParticipantNumber: 4,
    activityCategory: HobbyDataModel(
        id: const Uuid().v4(),
        title: "Concert",
        image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
        expirationDate: DateTime.now()),
    activityDesc:
    "Lorem ipsum dolor sit amet. Ad eius velit in deleniti officiis "
        "qui adipisci veniam ab totam quae. Ut architecto ipsa et "
        "voluptas inventore qui minus dolore nam repudiandae error "
        "non libero numquam ea rerum distinctio est laborum iusto. "
        "Id velit aliquam id exercitationem quos in blanditiis maxime? "
        "Vel architecto esse et voluptate consequatur "
        "eum quasi temporibus.",
  );

  SwipeCreatorInfoDataModel _generateCreatorInfo() => SwipeCreatorInfoDataModel(
    id: MockUserData.mockedUser.id,
    name: MockUserData.mockedUser.firstName,
    imageList: <String>[...MockUserData.mockedUser.secondaryPhotos]
      ..insert(0, MockUserData.mockedUser.profilePhoto),
    birthdate: Birthdate.minSecurityDate(),
    hobbyList: <HobbyDataModel>[..._generateHobbyList()],
    gender: GenderDataModel.female,
    verified: true,
    location: LocationDataModel(
        city: "Versailles",
        zipCode: "78000",
        region: "Ile de France",
        country: "France"),
  );

  List<HobbyDataModel> _generateHobbyList() => MockUserData.mockedUser.hobbies;
}
