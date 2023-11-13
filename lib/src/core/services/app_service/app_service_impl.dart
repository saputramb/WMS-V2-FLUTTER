import 'package:wms_v2/src/common/keys/key.dart';
import 'package:wms_v2/src/core/services/app_service/app_service.dart';
import 'package:wms_v2/src/core/services/local_storage_service/local_storage_service.dart';

class AppServiceImpl implements AppService {
  AppServiceImpl({
    required LocalStorageService localStorageService,
  }) : _localStorageService = localStorageService;
  late final LocalStorageService _localStorageService;

  @override
  bool get isDarkMode =>
      _localStorageService.getBool(key: AppKeys.darkModeKey) ?? false;

  @override
  bool get isFirstUse =>
      _localStorageService.getBool(key: AppKeys.isFirstUseKey) ?? true;

  @override
  Future<void> setIsDarkMode({required bool darkMode}) async {
    return _localStorageService.setValue(
      key: AppKeys.darkModeKey,
      value: darkMode,
    );
  }

  @override
  Future<void> setIsFirstUse({required bool isFirstUse}) async {
    return _localStorageService.setValue(
      key: AppKeys.isFirstUseKey,
      value: isFirstUse,
    );
  }
}
