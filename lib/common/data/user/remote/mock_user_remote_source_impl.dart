import 'package:moony_app/common/data/user/remote/gender_data_model.dart';
import 'package:moony_app/common/data/user/remote/relation_state_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';
import 'package:moony_app/common/domain/user/model/birthdate.dart';
import 'package:uuid/uuid.dart';

import 'hobby_data_model.dart';

/// UserRemoteSource implementation for mock
class MockUserRemoteSourceImpl implements UserRemoteSource {
  @override
  Future<UserDataModel?> getById({required String id}) async {
    return MockUserData.mockedUser;
  }

  @override
  Future<void> create({required UserDataModel user}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> update({required UserDataModel user}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

/// Generate mock user data
abstract class MockUserData {
  /// Static mockedUser
  static final UserDataModel mockedUser = UserDataModel(
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
            expirationDate: DateTime.now()),
        HobbyDataModel(
            id: const Uuid().v4(),
            title: "Foot",
            image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
            expirationDate: DateTime.now()),
        HobbyDataModel(
            id: const Uuid().v4(),
            title: "Bar",
            image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
            expirationDate: DateTime.now()),
        HobbyDataModel(
            id: const Uuid().v4(),
            title: "Cinema",
            image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
            expirationDate: DateTime.now()),
        HobbyDataModel(
            id: const Uuid().v4(),
            title: "Voyage",
            image: "https://cdn-icons-png.flaticon.com/128/77/77358.png",
            expirationDate: DateTime.now())
      ]);
}
