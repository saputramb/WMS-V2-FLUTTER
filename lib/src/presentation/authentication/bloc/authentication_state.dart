part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(false) bool isLoading,
    AuthenticationNotification? notification,
    required Option<dynamic> result,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(result: none());
}
