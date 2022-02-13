import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:moony_app/common/data/services/storage/storage_remote_source.dart';
import 'package:moony_app/common/util/logger.dart';

/// StorageRemoteSource implementation
class StorageRemoteSourceImpl extends StorageRemoteSource {
  /// Constructor
  StorageRemoteSourceImpl(this._storage);

  final FirebaseStorage _storage;

  @override
  Future<String?> uploadFile({
    required String localPath,
    required String remotePath,
  }) async {
    try {
      await _storage.ref(remotePath).putFile(File(localPath));
      return await _storage.ref(remotePath).getDownloadURL();
    } catch (e, trace) {
      Logger.e(trace.toString());
      return null;
    }
  }
}
