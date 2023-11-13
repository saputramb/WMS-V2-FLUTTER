import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:wms_v2/src/core/bloc_core/bloc_observer.dart';
import 'package:wms_v2/src/core/services/crashlytics_service/crashlytics_service.dart';
import 'package:wms_v2/src/di/injection.dart';
import 'package:wms_v2/src/presentation/app/bloc/app_bloc.dart';
import 'package:wms_v2/src/presentation/app/pages/app.dart';

Future<void> bootstrap({
  AsyncCallback? firebaseInitialization,
  AsyncCallback? flavorConfiguration,
}) async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await dotenv.load(fileName: ".env");
    await firebaseInitialization?.call();
    // configureDependencies();
    Logger.level = Level.all;
    await flavorConfiguration?.call();

    // getIt.allReady();
    Injection.init();
    await Injection.instance.allReady();
    Bloc.observer = AppBlocObserver();
    runApp(BlocProvider(
      create: (_) => Injection.instance<AppBloc>(),
      child: const App(),
    ));
  }, (error, stack) {
    // getIt<CrashlyticsService>().recordException(error, stack);
    Injection.instance<CrashlyticsService>().recordException(error, stack);
  });
}
