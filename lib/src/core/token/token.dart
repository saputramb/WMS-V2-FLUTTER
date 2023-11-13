import 'package:wms_v2/src/common/keys/key.dart';
import 'package:wms_v2/src/core/local_storages/storage_item.dart';
import 'package:wms_v2/src/core/local_storages/storage_service.dart';

class Token {
  Token._();

  static Future<String> getTokenOnLocalStorage() async {
    return await StorageService().readSecureData(StorageKeys.tokenKey);
  }

  static Future<String> getRefreshTokenOnLocalStorage() async {
    return await StorageService().readSecureData(StorageKeys.refreshTokenKey);
  }

  static Future<String> getExpiresOnLocalStorage() async {
    return await StorageService().readSecureData(StorageKeys.expiresKey);
  }

  static Future<void> saveTokenToLocalStorage(String value) {
    final storage = StorageItem(StorageKeys.tokenKey, value);
    return StorageService().writeSecureData(storage);
  }

  static Future<void> saveRefreshTokenToLocalStorage(String value) {
    final storage = StorageItem(StorageKeys.refreshTokenKey, value);
    return StorageService().writeSecureData(storage);
  }

  static Future<void> saveExpiresToLocalStorage(String value) {
    final storage = StorageItem(StorageKeys.expiresKey, value);
    return StorageService().writeSecureData(storage);
  }

  static Future<void> deleteTokenOnLocalStorage() async {
    var token = await getTokenOnLocalStorage();
    var storage = StorageItem(StorageKeys.tokenKey, token.toString());
    return StorageService().deleteSecureData(storage);
  }

  static Future<void> deleteRefreshTokenOnLocalStorage() async {
    var refreshToken = await getRefreshTokenOnLocalStorage();
    var storage =
        StorageItem(StorageKeys.refreshTokenKey, refreshToken.toString());
    return StorageService().deleteSecureData(storage);
  }

  static Future<void> deleteExpiresOnLocalStorage() async {
    var expires = await getExpiresOnLocalStorage();
    var storage = StorageItem(StorageKeys.expiresKey, expires.toString());
    return StorageService().deleteSecureData(storage);
  }
}
