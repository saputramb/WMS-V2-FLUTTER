import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wms_v2/src/common/router/app_router.dart';
import 'package:wms_v2/src/common/themes/app_themes.dart';
import 'package:wms_v2/src/core/bloc_core/ui_status.dart';
import 'package:wms_v2/src/presentation/app/bloc/app_bloc.dart';
import 'package:wms_v2/src/presentation/widgets/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AppBloc>().add(const AppEvent.loaded());
    return BlocSelector<AppBloc, AppState, UIStatus>(
      // bloc: appBloc,
      selector: (state) => state.status,
      builder: (context, state) {
        return state.when(
          initial: () => const SplashPage(),
          loading: () => const SplashPage(),
          loadFailed: (_) => const SizedBox(),
          loadSuccess: (_) => const _App(),
        );
      },
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.select(
      (AppBloc value) => value.state.isDarkMode,
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: AppRouter.router,
      title: 'WMS',
    );
  }
}
