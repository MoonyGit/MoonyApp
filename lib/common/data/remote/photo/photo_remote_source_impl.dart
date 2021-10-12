import 'dart:io';

import 'package:collection/collection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:moony_app/common/data/remote/photo/photo_remote_source.dart';
import 'package:moony_app/common/util/logger.dart';

/// PhotoRemoteSource implementation
class PhotoRemoteSourceImpl extends PhotoRemoteSource {
  /// Constructor
  PhotoRemoteSourceImpl(this._storage);

  static const String _serverPathPrefix = "user_photos/";
  static const String _serverPathProfileSuffix = "/profile";
  static const String _serverProfilePhotoName = "/photo";
  static const String _serverPathSecondarySuffix = "/secondary";
  final FirebaseStorage _storage;

  @override
  Future<List<String>?> uploadSecondaryPhotos(
      {required List<String> paths, required String userId}) {
    return Future.wait(paths.mapIndexed((int index, String localUrl) async {
      final String indexPhoto = (index + 1).toString();
      final String userPhotoPath = _serverPathPrefix +
          userId +
          _serverPathSecondarySuffix +
          _serverProfilePhotoName +
          indexPhoto;
      return (await _uploadPhotoAtPath(
          remotePath: userPhotoPath, localPath: localUrl))!;
    }));
  }

  @override
  Future<String?> uploadProfilePhoto(
      {required String path, required String userId}) async {
    final String userPhotoPath = _serverPathPrefix +
        userId +
        _serverPathProfileSuffix +
        _serverProfilePhotoName +
        1.toString();
    return _uploadPhotoAtPath(remotePath: userPhotoPath, localPath: path);
  }

  Future<String?> _uploadPhotoAtPath(
      {required String remotePath, required String localPath}) async {
    try {
      await _storage.ref(remotePath).putFile(File(localPath));
      return await _storage.ref(remotePath).getDownloadURL();
    } catch (e, trace) {
      Logger.e(trace.toString());
      return null;
    }
  }
}
