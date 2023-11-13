import 'package:wms_v2/src/core/services/app_service/app_service.dart';
import 'package:wms_v2/src/core/services/app_service/app_service_impl.dart';
import 'package:wms_v2/src/core/services/crashlytics_service/crashlytics_service.dart';
import 'package:wms_v2/src/core/services/crashlytics_service/crashlytics_service_impl.dart';
import 'package:wms_v2/src/core/services/local_storage_service/local_storage_service.dart';
import 'package:wms_v2/src/core/services/local_storage_service/shared_preferences_service.dart';
import 'package:wms_v2/src/core/services/log_service/debug_log_service.dart';
import 'package:wms_v2/src/core/services/log_service/log_service.dart';
import 'package:wms_v2/src/di/injection.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injection = Injection.instance;

    injection
      ..registerSingletonAsync<CrashlyticsService>(() async {
        return CrashlyticsServiceImpl();
      })
      ..registerFactory<LogService>(DebugLogService.new)
      ..registerSingleton<LocalStorageService>(
        SharedPreferencesService(
          logService: injection(),
        ),
        signalsReady: true,
      )
      ..registerSingleton<AppService>(
        AppServiceImpl(
          localStorageService: injection(),
        ),
      );
  }
}
