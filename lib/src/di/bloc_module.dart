import 'package:wms_v2/src/di/injection.dart';
import 'package:wms_v2/src/presentation/app/bloc/app_bloc.dart';
import 'package:wms_v2/src/presentation/authentication/bloc/authentication_bloc.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injection = Injection.instance;

    injection.registerLazySingleton<AppBloc>(
      () => AppBloc(
        appService: injection(),
        logService: injection(),
      ),
    );

    injection.registerFactory(() => AuthenticationBloc(injection()));
  }
}
