import 'package:wms_v2/src/core/error/error_response.dart';
import 'package:wms_v2/src/data/datasources/authentication/authentication_datasource.dart';
import 'package:wms_v2/src/data/repositories/authentication/authentication_repository_impl.dart';
import 'package:wms_v2/src/di/dio_module.dart';
import 'package:wms_v2/src/di/injection.dart';
import 'package:wms_v2/src/domain/repositories/authentication/authentication_repository.dart';
import 'package:wms_v2/src/domain/usecases/authentication/authentication_use_case.dart';
import 'package:wms_v2/src/domain/usecases/authentication/authentication_use_case_impl.dart';

class RestClientModule {
  RestClientModule._();

  static void init() {
    final injection = Injection.instance;

    // Data Source
    injection.registerFactory<AuthenticationDataSource>(
      () => AuthenticationDataSource(
        injection(instanceName: DioModule.dioInstanceName),
      ),
    );

    // Repository
    injection.registerLazySingleton<AuthenticationRepostory>(
      () => AuthenticationRepositoryImpl(
        authenticationDataSource: injection(),
        errorResponse: injection(),
      ),
    );

    // Use Case
    injection.registerLazySingleton<AuthenticationUseCase>(
      () => AuthenticationUseCaseImpl(injection()),
    );

    // Error Response
    injection.registerLazySingleton<ErrorResponse>(() => ErrorResponseImpl());
  }
}
