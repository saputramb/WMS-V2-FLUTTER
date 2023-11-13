import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@Freezed(equal: false)
class AuthenticationNotification with _$AuthenticationNotification {
  factory AuthenticationNotification.notifySuccess({
    required String message,
    required String description,
  }) = _NotificationNotifySuccess;

  factory AuthenticationNotification.notifyFailed({
    required String message,
    required String description,
  }) = _NotificationNotifyFailed;
}
