import 'dart:async';

import 'package:get_storage/get_storage.dart';
import 'package:moony_app/infrastructure/services/local_storage/local_storage.dart';

/// Implementation of local storage using Get_Storage
class LocalStorageService implements ILocalStorage {
  final GetStorage _storage = GetStorage();

  /// Saves a [value] to persistent storage in the background.
  @override
  Future<void> add(String key, String value) async {
    return _storage.write(key, value);
  }

  /// Reads a value of any type from persistent storage.
  @override
  Future<String?> get(String key) async => _storage.read(key);

  // Reads all value of any type from persistent storage.
  @override
  Future<Map<String, String>> getAll() async => await _storage.getValues();

  /// Removes an entry from persistent storage.
  @override
  Future<void> remove(String key) async => _storage.remove(key);

  /// Remove a list of data from storage
  @override
  Future<void> removeKeys(List<String> keys) async {
    if (keys.isNotEmpty) {
      for (int i = 0; i < keys.length; i++) {
        await _storage.remove(keys[i]);
      }
    }
  }

  /// Completes with true once the user preferences for the app has been cleared
  @override
  Future<void> removeAll() {
    return _storage.erase();
  }

  /// Returns true if persistent storage the contains the given [key].
  @override
  Future<bool> containsKey(String key) async => _storage.hasData(key);
}
