import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wms_v2/src/core/local_storages/storage_item.dart';

class StorageService {
  final FlutterSecureStorage localStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: false,
      );

  Future<void> writeSecureData(StorageItem newItem) async {
    debugPrint("Writing new data having key ${newItem.key}");
    await localStorage.write(key: newItem.key, value: newItem.value);
  }

  Future<String> readSecureData(String key) async {
    debugPrint("Reading data having key $key");
    var readData = await localStorage.read(key: key);
    return readData ?? '';
  }

  Future<void> deleteSecureData(StorageItem item) async {
    debugPrint("Deleting data having key ${item.key}");
    await localStorage.delete(key: item.key, aOptions: _getAndroidOptions());
  }

  Future<List<StorageItem>> readAllSecureData() async {
    debugPrint("Reading all secured data");
    var allData = await localStorage.readAll(aOptions: _getAndroidOptions());
    List<StorageItem> list =
        allData.entries.map((e) => StorageItem(e.key, e.value)).toList();
    return list;
  }

  Future<void> deleteAllSecureData() async {
    debugPrint("Deleting all secured data");
    await localStorage.deleteAll(aOptions: _getAndroidOptions());
  }

  Future<bool> containsKeyInSecureData(String key) async {
    debugPrint("Checking data for the key $key");
    var containsKey = await localStorage.containsKey(
        key: key, aOptions: _getAndroidOptions());
    return containsKey;
  }
}
