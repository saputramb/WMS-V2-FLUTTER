part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.loaded() = _Loaded;

  const factory AppEvent.disableFirstUse() = _DisableFirstUse;

  const factory AppEvent.darkModeChanged() = _DarkModeChanged;
  
  const factory AppEvent.isLogin() = _IsLogin;
}
