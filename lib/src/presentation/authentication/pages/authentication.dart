import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:wms_v2/src/common/keys/key.dart';
import 'package:wms_v2/src/common/spacings/app_spacing.dart';
import 'package:wms_v2/src/presentation/authentication/bloc/authentication_bloc.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WMS'),
      ),
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          state.notification?.when(
            notifySuccess: (message, description) {
              Alert(
                context: context,
                type: AlertType.success,
                style: const AlertStyle(
                  isOverlayTapDismiss: false,
                  isCloseButton: false,
                ),
                title: message,
                desc: description,
                buttons: [
                  DialogButton(
                    onPressed: () {
                      context.pop();
                    },
                    width: 120,
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ).show();
              // context.go('/home');
            },
            notifyFailed: (message, description) {
              Alert(
                context: context,
                type: AlertType.error,
                style: const AlertStyle(
                  isOverlayTapDismiss: false,
                  isCloseButton: false,
                ),
                title: message,
                desc: description,
                buttons: [
                  DialogButton(
                    onPressed: () {
                      context.pop();
                    },
                    width: 120,
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ).show();
            },
          );
        },
        // buildWhen: (prev, next) => prev.isLoading != next.isLoading,
        builder: (context, state) {
          return FadeInDown(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Authenticate'),
                  AppSpacing.verticalSpacing32,
                  ElevatedButton(
                      key: const Key(WidgetKeys.introStartedButtonKey),
                      onPressed: state.isLoading
                          ? null
                          : () async {
                              context
                                  .read<AuthenticationBloc>()
                                  .add(AuthenticationEvent.signIn(
                                    context: context,
                                    username: 'PowerUser',
                                    password: '123456',
                                  ));
                            },
                      child: state.isLoading
                          ? const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(),
                                ),
                                AppSpacing.horizontalSpacing10,
                                Text('Please Wait...')
                              ],
                            )
                          : const Text('Sign In')),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
