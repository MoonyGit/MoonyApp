import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/common/data/user/remote/user_data_model.dart';
import 'package:moony_app/common/data/user/remote/user_remote_source.dart';

/// UserRemoteSource implementation
class UserRemoteSourceImpl implements UserRemoteSource {
  /// Constructor
  const UserRemoteSourceImpl(this._firestore);

  static const String _userCollection = 'users';

  final FirebaseFirestore _firestore;

  @override
  Future<UserDataModel?> getById({required String id}) {
    return _firestore.collection(_userCollection).doc(id).get().then(
        (DocumentSnapshot<Map<String, dynamic>?> value) => value.data()?.let(
            (Map<String, dynamic> it) =>
                UserDataModel.fromJson(it)));
  }

  @override
  Future<void> create({required UserDataModel user}) {
    return _firestore
        .collection(_userCollection)
        .doc(user.id)
        .set(user.toJson());
  }

  @override
  Future<void> update({required UserDataModel user}) {
    return _firestore
        .collection(_userCollection)
        .doc(user.id)
        .update(user.toJson());
  }
}
