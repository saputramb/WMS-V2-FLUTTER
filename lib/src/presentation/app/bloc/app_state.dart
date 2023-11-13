part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(UIInitial()) UIStatus status,
    @Default(false) bool isDarkMode,
    @Default(true) bool isFirstUse,
    @Default(false) bool isLogin,
  }) = _AppState;
}
