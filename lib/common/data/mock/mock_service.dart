import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:moony_app/activity_creation/data/remote/activity_creation_remote_source.dart';
import 'package:moony_app/activity_creation/data/remote/model/activity_creation_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/model/swipe_creator_info_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/model/swipe_data_model.dart';
import 'package:moony_app/activity_swipe/data/remote/swipe_remote_source.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/common/data/activity/remote/activity_type.dart';
import 'package:moony_app/common/data/activity/remote/budget_data_model.dart';
import 'package:moony_app/common/data/model/address_data_model.dart';
import 'package:moony_app/common/data/remote/failure/http_exception.dart';
import 'package:moony_app/common/data/services/storage/storage_remote_source.dart';
import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:moony_app/common/util/logger.dart';
import 'package:moony_app/profile/activity/data/model/user_profile_activity_data_model.dart';
import 'package:moony_app/profile/activity/data/source/user_profile_activities_data_source.dart';
import 'package:moony_app/profile/common/banner/data/model/user_profile_banner_data_model.dart';
import 'package:moony_app/profile/common/banner/data/source/user_profile_banner_data_source.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

/// Global mock class that provide mocked data
class MockService
    implements
        UserRemoteSource,
        ISwipeRemoteSource,
        StorageRemoteSource,
        AuthDataSource,
        UserProfileActivitiesDataSource,
        UserProfileBannerDataSource,
        IActivityCreationRemoteSource {
  static const String _currentUserId = "myCurrentUserId";
  static const String _swipeMockUserId = "mySwipeUser";

  /// A mock list of swipe user
  final List<SwipeItemDataModel> _swipeMockUserList = <SwipeItemDataModel>[];

  /// A mock swipe user
  final UserDataModel _swipeMockUser = UserDataModel(
    id: "mySwipeUser",
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
    hobbies: <ActivityTypeData>[
      const ActivityTypeData.athletic(),
      const ActivityTypeData.dinner(),
      const ActivityTypeData.drink(),
      const ActivityTypeData.cinema(),
      const ActivityTypeData.exploration(),
    ],
  );

  /// Uncomment to enable access feature by custom route
  AuthUserDataSourceModel? _currentUserAuth = AuthUserDataSourceModel(
    id: _currentUserId,
    phone: "+33834763058",
  );

// AuthUserDataSourceModel? _currentUserAuth;
  UserDataModel? _currentUser;
  final String _smsOtp = "123456";
  final StreamController<VerifyPhoneStateDataSourceEvent>
      _phoneAuthenticationState =
      BehaviorSubject<VerifyPhoneStateDataSourceEvent>();

  final StreamController<AuthUserDataSourceModel?> _userAuthState =
      BehaviorSubject<AuthUserDataSourceModel>();

//#region UserRemoteSource impl
  @override
  Future<void> create({required UserDataModel user}) async {
    Logger.d(
      "MOCK: create user: $user",
    );
    _currentUser = UserDataModel(
      id: _currentUserId,
      firstName: "on s'en",
      familyName: "balek",
      birthdate: Birthdate.minSecurityDate(),
      emailAddress: "toto@tata.com",
      phoneNumber: "+33134768970",
      gender: GenderDataModel.female,
      relationState: RelationStateDataModel.alone,
      profilePhoto: "http://marchepa.fr",
      secondaryPhotos: ["http://truc.ez"],
      verified: true,
      creationDate: DateTime.now(),
      lastUpdateDate: DateTime.now(),
      hobbies: [],
    );
  }

  @override
  Future<UserDataModel?> getById({required String id}) async {
    Logger.d(
      "MOCK: getById id: $id",
    );
    switch (id) {
      case _currentUserId:
        {
          return _currentUser;
        }
      default:
        {
          return _swipeMockUser;
        }
    }
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
      () => _swipeMockUserList
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
          currencyCode: "EUR",
          weight: 2,
        ),
        activityLocation: AddressDataModel(
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
        activityCategory: const ActivityTypeData.exploration(),
        activityDesc:
            "J'aimerais bien aller explorer cet endroit avec toi, si ça te dis",
      );

  SwipeCreatorInfoDataModel _generateCreatorInfo() => SwipeCreatorInfoDataModel(
        id: _swipeMockUser.id,
        name: _swipeMockUser.firstName,
        imageList: <String>[..._swipeMockUser.secondaryPhotos]
          ..insert(0, _swipeMockUser.profilePhoto),
        birthdate: Birthdate.minSecurityDate(),
        hobbyList: <ActivityTypeData>{..._generateHobbyList()},
        gender: GenderDataModel.female,
        verified: true,
        location: AddressDataModel(
          city: "Versailles",
          zipCode: "78000",
          region: "Ile de France",
          country: "France",
        ),
      );

  List<ActivityTypeData> _generateHobbyList() => _swipeMockUser.hobbies;

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

//#region AuthDataSource impl

  @override
  Stream<VerifyPhoneStateDataSourceEvent> getPhoneNumberAuthenticationState() {
    Logger.d("MOCK: getPhoneNumberAuthenticationState");
    return _phoneAuthenticationState.stream;
  }

  @override
  Future<AuthUserDataSourceModel?> getSignedInUser() {
    Logger.d("MOCK: getSignedInUser");
    return Future<AuthUserDataSourceModel?>.value(_currentUserAuth);
  }

  @override
  Stream<AuthUserDataSourceModel?> getUserAuthStateChanges() {
    Logger.d("MOCK: getUserAuthStateChanges");
    return _userAuthState.stream;
  }

  @override
  Future<void> signInWithPhoneNumber({required String phoneNumber}) async {
    Logger.d("MOCK: signInWithPhoneNumber, phoneNumber: $phoneNumber");
    _phoneAuthenticationState
        .add(const VerifyPhoneStateDataSourceEvent.otpSent());
    _phoneAuthenticationState.add(
      VerifyPhoneStateDataSourceEvent.autoLogin(
        smsCode: _smsOtp,
      ),
    );
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      verifyPhoneOtp({required String code}) async {
    Logger.d("MOCK: verifyPhoneOtp, code: $code");
    _currentUserAuth = AuthUserDataSourceModel(
      id: _currentUserId,
      phone: "+33834763058",
    );
    return Future<
        Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>.value(
      right(
        AuthUserDataSourceModel(
          id: "MyUserId",
          phone: "+33834763058",
        ),
      ),
    );
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      registerWithEmailAndPassword(
          {required String emailAddress, required String password}) {
    Logger.d("MOCK: registerWithEmailAndPassword");
    return Future<
        Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>.value(
      right(
        AuthUserDataSourceModel(
          id: "MyUserId",
        ),
      ),
    );
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithApple() {
    Logger.d("MOCK: signInWithApple");
    return Future<
        Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>.value(
      right(
        AuthUserDataSourceModel(
          id: "MyUserId",
        ),
      ),
    );
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithEmailAndPassword(
          {required String emailAddress, required String password}) {
    Logger.d(
      "MOCK: signInWithEmailAndPassword, emailAddress: $emailAddress," +
          "password: $password",
    );
    return Future<
        Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>.value(
      right(
        AuthUserDataSourceModel(
          id: "MyUserId",
        ),
      ),
    );
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithFacebook() {
    Logger.d("MOCK: signInWithFacebook");
    return Future<
        Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>.value(
      right(
        AuthUserDataSourceModel(
          id: "MyUserId",
        ),
      ),
    );
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithGoogle() {
    Logger.d("MOCK: signInWithGoogle");
    return Future<
        Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>.value(
      right(
        AuthUserDataSourceModel(
          id: "MyUserId",
        ),
      ),
    );
  }

  @override
  Future<void> signOut() async {
    Logger.d("MOCK: signOut");
    _currentUserAuth = null;
  }

//#endregion

//#region UserProfileActivityDataModel impl
  @override
  Future<List<UserProfileActivityDataModel>> getActivities() {
    Logger.d("MOCK: getActivities");
    final List<UserProfileActivityDataModel> result =
        List<UserProfileActivityDataModel>.empty(growable: true);

    for (int i = 0; i < 20; i++) {
      result.add(
        UserProfileActivityDataModel(
          activityId: "$i",
          activityName: "Party number $i",
          delay: i,
          location: AddressDataModel(
            city: "Paris",
            country: "France",
            region: "Ile de France",
            zipCode: "75000",
          ),
          numberWaitingPartner: i,
        ),
      );
    }

    return Future<List<UserProfileActivityDataModel>>.value(result);
  }

//#endregion

//#region UserProfileBannerDataModel impl
  @override
  Future<UserProfileBannerDataModel> getUserInformation() {
    Logger.d("MOCK: getUserInformation");
    return Future<UserProfileBannerDataModel>.value(
      UserProfileBannerDataModel(
        birthdate: DateTime.utc(1993, 9, 8),
        firstName: "Jordane",
        lastName: "Serreau",
        location: AddressDataModel(
          city: "Paris",
          country: "France",
          region: "Ile de France",
          zipCode: "75000",
        ),
        pictures:
            "https://www.ecranlarge.com/uploads/image/001/152/peepoodo-the-super-fuck-friends-affiche-fr-peepoodo-the-super-fuck-friends-saison-1-1152342.jpg",
        froonysNumber: 456,
        activityNumber: 42,
      ),
    );
  }

//#endregion

//#region Activity creation impl
  @override
  Future<HttpFailure?> createActivity({
    required ActivityCreationDataModel activity,
  }) async {
    return null;
  }
//#endregion
}
