part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.signIn({required BuildContext context, required String username, password}) = _SignIn;

  const factory AuthenticationEvent.signOut({required BuildContext context}) = _SignOut;
}