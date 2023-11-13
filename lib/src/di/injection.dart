// import 'package:get_it/get_it.dart';
// import 'package:wms_v2/src/core/network/api_client.dart';
// import 'package:wms_v2/src/core/network/api_config.dart';
// import 'package:wms_v2/src/core/network/api_service.dart';
// import 'package:wms_v2/src/data/datasources/remote_data_source.dart';

// final locator = GetIt.instance;

// void init() {
//   // CONFIG
//   locator.registerLazySingleton(() => ApiConfig());

//   // NETWORK
//   locator.registerLazySingleton(() => locator<ApiClient>().client);
//   // locator.registerSingleton(ApiClient(config: locator()));
//   locator.registerLazySingleton<ApiService>(
//     () => ApiServiceImpl(
//       apiClient: locator(),
//     ),
//   );

//   // DATA SOURCE
//   locator.registerLazySingleton<RemoteDataSource>(
//     () => RemoteDataSourceImpl(
//       apiService: locator(),
//     ),
//   );

//   // bloc
//   // locator.registerFactory(() => LoginBloc(locator()));

//   // usecase
//   // locator.registerLazySingleton(() => UseCase(locator()));

//   // repository
//   // locator.registerLazySingleton<Repository>(
//   //   () => RepositoryImpl(
//   //     remoteDataSource: locator(),
//   //   ),
//   // );

//   // external
//   // locator.registerLazySingleton(() => locator<ApiClient>().client);
// }

import 'package:get_it/get_it.dart';
import 'package:wms_v2/src/di/bloc_module.dart';
import 'package:wms_v2/src/di/dio_module.dart';
import 'package:wms_v2/src/di/rest_client_module.dart';
import 'package:wms_v2/src/di/service_module.dart';

class Injection {
  Injection._();

  static GetIt instance = GetIt.instance;

  static void init() {
    DioModule.setup();
    ServiceModule.init();
    RestClientModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
