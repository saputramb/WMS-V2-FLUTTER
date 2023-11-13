import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wms_v2/src/core/bloc_core/ui_status.dart';
import 'package:wms_v2/src/core/services/app_service/app_service.dart';
import 'package:wms_v2/src/core/services/log_service/log_service.dart';
import 'package:wms_v2/src/core/token/token.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AppService appService,
    required LogService logService,
  }) : super(const AppState()) {
    _appService = appService;
    _logService = logService;
    on<_Loaded>(_onLoaded);
    on<_DarkModeChanged>(_onDarkModeChanged);
    on<_DisableFirstUse>(_onDisableFirstUse);
    on<_IsLogin>(_isLogin);
  }

  late final AppService _appService;
  late final LogService _logService;

  FutureOr<void> _onLoaded(
    _Loaded event,
    Emitter<AppState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: const UILoading(),
        ),
      );

      // await Future.delayed(const Duration(seconds: 2));

      final bool darkMode = _appService.isDarkMode;
      final bool isFirstUse = _appService.isFirstUse;

      emit(
        state.copyWith(
          status: const UILoadSuccess(),
          isDarkMode: darkMode,
          isFirstUse: isFirstUse,
        ),
      );
    } catch (e, s) {
      _logService.e('AppBloc load failed', e, s);
      emit(
        state.copyWith(
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }

  FutureOr<void> _onDarkModeChanged(
    _DarkModeChanged event,
    Emitter<AppState> emit,
  ) async {
    final bool isDarkMode = !state.isDarkMode;
    await _appService.setIsDarkMode(darkMode: isDarkMode);
    emit(
      state.copyWith(
        isDarkMode: isDarkMode,
      ),
    );
  }

  FutureOr<void> _onDisableFirstUse(
    _DisableFirstUse event,
    Emitter<AppState> emit,
  ) async {
    if (state.isFirstUse) {
      await _appService.setIsFirstUse(isFirstUse: false);
      emit(
        state.copyWith(
          isFirstUse: false,
        ),
      );
    }
  }
  
  FutureOr<void> _isLogin(
    _IsLogin event,
    Emitter<AppState> emit,
  ) async {
    var token = await Token.getTokenOnLocalStorage();
    if(token.isNotEmpty) {
      emit(
        state.copyWith(
          isLogin: true,
        )
      );
    }
  }
}
