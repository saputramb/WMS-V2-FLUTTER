import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wms_v2/src/presentation/app/bloc/app_bloc.dart';
import 'package:wms_v2/src/presentation/authentication/pages/authentication.dart';
import 'package:wms_v2/src/presentation/authentication/pages/test.dart';
import 'package:wms_v2/src/presentation/intro/intro_page.dart';

class AppDirector extends StatelessWidget {
  const AppDirector({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AppBloc>().add(const AppEvent.isLogin());
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (prev, next) => prev.isFirstUse != next.isFirstUse,
      builder: (context, state) {
        final bool isFirstUse = state.isFirstUse;
        if (isFirstUse) {
          return const IntroPage();
        } else {
          final bool isLogin =
              context.select((AppBloc value) => value.state.isLogin);
          return !isLogin ? const Authentication() : const Test();
        }
      },
    );
  }
}
