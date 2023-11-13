// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:wms_v2/src/core/bloc_core/notification.dart';
import 'package:wms_v2/src/core/error/error.dart';
import 'package:wms_v2/src/domain/entities/authentication/authentication_entities.dart';
import 'package:wms_v2/src/domain/usecases/authentication/authentication_use_case.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationUseCase _authenticationUseCase;
  AuthenticationBloc(this._authenticationUseCase) : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>((AuthenticationEvent event, Emitter<AuthenticationState> emit) async {
      await event.when(
        signIn: (BuildContext context, String username, password) async {
          emit(state.copyWith(isLoading: true, result: none()));
          await Future.delayed(const Duration(seconds: 2));
          final body = !username.contains('@') 
              ? {
                'username': username,
                'password': password
              } : {
                'email': username,
                'password': password,
              };
          final result = await _authenticationUseCase.signIn(body);
          emit(result.fold(
            (Error error) => state.copyWith(
              isLoading: false,
              result: none(),
              notification: AuthenticationNotification.notifyFailed(
                message: error.message,
                description: error.description,
              ),
            ),
            (AuthenticationEntities response) => state.copyWith(
              isLoading: false,
              result: optionOf(response.data),
              notification: AuthenticationNotification.notifySuccess(
                message: response.status,
                description: response.message,
              ),
            ),
          ));
          emit(state.copyWith(notification: null));
          await Future.delayed(const Duration(seconds: 2));
          if(state.result.isSome()) {
            context.go('/home');
          }
        },
        signOut: (BuildContext context) async {
          emit(state.copyWith(isLoading: true));
          await Future.delayed(const Duration(seconds: 2));
          final result = await _authenticationUseCase.signOut();
          emit(result.fold(
            (Error error) => state.copyWith(
              isLoading: false,
              notification: AuthenticationNotification.notifyFailed(
                message: error.message,
                description: error.description,
              ),
            ),
            (AuthenticationEntities response) => state.copyWith(
              isLoading: false,
              notification: AuthenticationNotification.notifySuccess(
                message: response.status,
                description: response.message,
              ),
            ),
          ));
          emit(state.copyWith(notification: null));
          await Future.delayed(const Duration(seconds: 2));
          if(state.result.isNone()) {
            context.go('/sign-in');
          }
        },
      );
    });
  }
}