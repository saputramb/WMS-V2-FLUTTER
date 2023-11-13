import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wms_v2/src/di/injection.dart';
import 'package:wms_v2/src/presentation/app/pages/app_director.dart';
import 'package:wms_v2/src/presentation/authentication/bloc/authentication_bloc.dart';
import 'package:wms_v2/src/presentation/authentication/pages/authentication.dart';
import 'package:wms_v2/src/presentation/authentication/pages/test.dart';

class AppRouter {
  AppRouter._();

  static const String appDirector = 'app-director';
  static const String appDirectorPath = '/';

  static const String homeNamed = 'home';
  static const String homePath = '/home';

  static const String signInNamed = 'sign-in';
  static const String signInPath = '/sign-in';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: appDirector,
        path: appDirectorPath,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => Injection.instance<AuthenticationBloc>(),
            ),
          ],
          child: const AppDirector(),
        ),
      ),
      // GoRoute(
      //   name: homeNamed,
      //   path: homePath,
      //   builder: (context, state) => const HomePage(),
      // ),
      GoRoute(
        name: signInNamed,
        path: signInPath,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => Injection.instance<AuthenticationBloc>(),
            ),
          ],
          child: const Authentication(),
        ),
      ),
      GoRoute(
        name: homeNamed,
        path: homePath,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => Injection.instance<AuthenticationBloc>(),
            ),
          ],
          child: const Test(),
        ),
      ),
    ],
  );
}
