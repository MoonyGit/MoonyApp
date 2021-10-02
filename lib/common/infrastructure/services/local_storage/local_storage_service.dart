import 'dart:async';

import 'package:get_storage/get_storage.dart';

import 'local_storage.dart';

/// Implementation of local storage using Get_Storage
class LocalStorageService implements ILocalStorage {

  /// Constructor
  LocalStorageService(this._storageName) {
    _storage = GetStorage(_storageName);
  }
  late final GetStorage _storage;
  final String _storageName;

  /// Saves a [value] to persistent storage in the background.
  @override
  Future<void> add(String key, dynamic value) async {
    await _init();
    return _storage.write(key, value);
  }

  /// Reads a value of any type from persistent storage.
  @override
  Future<T?> get<T>(String key) async {
    await _init();
    return _storage.read<T>(key);
  }

  // Reads all value of any type from persistent storage.
  @override
  Future<T?> getAll<T>() async {
    await _init();
     return _storage.getValues<T>();
  }

  /// Removes an entry from persistent storage.
  @override
  Future<void> remove(String key) async {
    await _init();
    _storage.remove(key);
  }

  /// Remove a list of data from storage
  @override
  Future<void> removeKeys(List<String> keys) async {
    await _init();
    if (keys.isNotEmpty) {
      for (int i = 0; i < keys.length; i++) {
        await _storage.remove(keys[i]);
      }
    }
  }

  /// Completes with true once the user preferences for the app has been cleared
  @override
  Future<void> removeAll() async {
    await _init();
    return _storage.erase();
  }

  /// Returns true if persistent storage the contains the given [key].
  @override
  Future<bool> containsKey(String key) async {
    await _init();
    return _storage.hasData(key);
  }

  Future<void> _init() async {
    final bool isInitialized = await _storage.initStorage;
    if (!isInitialized) {
      await GetStorage.init(_storageName);
    }
  }
}
