import 'package:collection/collection.dart';
import 'package:moony_app/activity_swipe/data/remote/model/budget_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/model/swipe_creator_info_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/model/swipe_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/model/swipe_location_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/common/data/services/storage/storage_remote_source.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/hobby_data_model.dart';
import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:uuid/uuid.dart';

/// Global mock class that provide mocked data
class MockService
    implements UserRemoteSource, ISwipeRemoteSource, StorageRemoteSource {
  /// A mock list of swipe user
  final List<SwipeItemDataModel> _swipeMockUserList = <SwipeItemDataModel>[];

  /// A mock swipe user
  final UserDataModel _swipeMockUser = UserDataModel(
    id: const Uuid().v4(),
    familyName: "Mihai",
    firstName: "Luna",
    birthdate: Birthdate.minSecurityDate(),
    emailAddress: "luna.mihai@gmail.com",
    phoneNumber: "0635629640",
    gender: GenderDataModel.female,
    relationState: RelationStateDataModel.alone,
    profilePhoto:
        "https://buzzly.info/upload/1763/25f8013708de185b6ae457e8ec15fefb.jpg",
    secondaryPhotos: <String>[
      "https://buzzly.info/upload/1097/a06730741dcc104a7108ba9356c12cb2.jpg",
      "https://buzzly.info/upload/1846/72fdca9a09b2868368cb14527ba98193.jpg"
    ],
    verified: true,
    creationDate: DateTime.now(),
    lastUpdateDate: DateTime.now(),
    hobbies: <HobbyDataModel>[
      HobbyDataModel(
        id: const Uuid().v4(),
        title: "Concert",
        image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
        expirationDate: DateTime.now(),
      ),
      HobbyDataModel(
        id: const Uuid().v4(),
        title: "Foot",
        image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
        expirationDate: DateTime.now(),
      ),
      HobbyDataModel(
        id: const Uuid().v4(),
        title: "Bar",
        image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
        expirationDate: DateTime.now(),
      ),
      HobbyDataModel(
        id: const Uuid().v4(),
        title: "Cinema",
        image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
        expirationDate: DateTime.now(),
      ),
      HobbyDataModel(
        id: const Uuid().v4(),
        title: "Voyage",
        image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
        expirationDate: DateTime.now(),
      )
    ],
  );

  //#region UserRemoteSource impl
  @override
  Future<void> create({required UserDataModel user}) async {
    Logger.d(
      "MOCK: create user: $user",
    );
  }

  @override
  Future<UserDataModel?> getById({required String id}) async {
    Logger.d(
      "MOCK: getById id: $id",
    );
    return _swipeMockUser;
  }

  @override
  Future<void> update({required UserDataModel user}) async {
    Logger.d(
      "MOCK: update user: $user",
    );
  }

  //#endregion

  //#region ISwipeRemoteSource impl
  @override
  Future<List<SwipeItemDataModel>> getNextSwipeItemList({
    required int number,
    required String userId,
  }) {
    Logger.d(
      "MOCK: getNextSwipeItemList, number: $number, userId: $userId",
    );
    return Future<List<SwipeItemDataModel>>.delayed(
      const Duration(seconds: 3),
          () =>
      _swipeMockUserList
        ..clear()
        ..addAll(<SwipeItemDataModel>[
          for (int i = 0; i < number; i++) _generateSwipeItemMock(),
        ]),
    );
  }

  @override
  Future<SwipeItemDataModel?> getSwipeItemById({required String id}) async {
    Logger.d(
      "MOCK: getSwipeItemById, id: $id",
    );
    return _swipeMockUserList.firstWhereOrNull(
          (SwipeItemDataModel element) => element.activityId == id,
    );
  }

  @override
  Future<bool> setSwipeDecision(
      {required String userId,
      required String activityId,
      required Decision decision}) {
    Logger.d(
      "MOCK: setSwipeDecision userid: $userId, "
      "activityId: $activityId, decision: $decision",
    );
    return Future<bool>.value(true);
  }

  SwipeItemDataModel _generateSwipeItemMock() => SwipeItemDataModel(
        creator: _generateCreatorInfo(),
        activityId: const Uuid().v4(),
        activityTitle: "Concert Shakira",
        activityBudget: BudgetDataModel(
          currency: "euros",
          isFree: false,
          lowerRange: 10,
          higherRange: 20,
        ),
        activityLocation: LocationDataModel(
          city: "Paris",
          zipCode: "78000",
          region: "Ile de France",
          country: "France",
        ),
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
          expirationDate: DateTime.now(),
        ),
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
        id: _swipeMockUser.id,
        name: _swipeMockUser.firstName,
        imageList: <String>[..._swipeMockUser.secondaryPhotos]
          ..insert(0, _swipeMockUser.profilePhoto),
        birthdate: Birthdate.minSecurityDate(),
        hobbyList: <HobbyDataModel>[..._generateHobbyList()],
        gender: GenderDataModel.female,
        verified: true,
        location: LocationDataModel(
          city: "Versailles",
          zipCode: "78000",
          region: "Ile de France",
          country: "France",
        ),
      );

  List<HobbyDataModel> _generateHobbyList() => _swipeMockUser.hobbies;

  //#endregion

  //#region StorageRemoteSource impl

  @override
  Future<String?> uploadFile(
      {required String localPath, required String remotePath}) {
    Logger.d(
      "MOCK: uploadFile, localPath: $localPath, remotePath: $remotePath",
    );
    return Future<String>.value("http://toto.com");
  }

//#endregion
}
