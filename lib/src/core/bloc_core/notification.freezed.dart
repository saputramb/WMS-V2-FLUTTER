// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationNotification {
  String get message => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String description) notifySuccess,
    required TResult Function(String message, String description) notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description)? notifySuccess,
    TResult? Function(String message, String description)? notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description)? notifySuccess,
    TResult Function(String message, String description)? notifyFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationNotifySuccess value) notifySuccess,
    required TResult Function(_NotificationNotifyFailed value) notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult? Function(_NotificationNotifyFailed value)? notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult Function(_NotificationNotifyFailed value)? notifyFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationNotificationCopyWith<AuthenticationNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationNotificationCopyWith<$Res> {
  factory $AuthenticationNotificationCopyWith(AuthenticationNotification value,
          $Res Function(AuthenticationNotification) then) =
      _$AuthenticationNotificationCopyWithImpl<$Res,
          AuthenticationNotification>;
  @useResult
  $Res call({String message, String description});
}

/// @nodoc
class _$AuthenticationNotificationCopyWithImpl<$Res,
        $Val extends AuthenticationNotification>
    implements $AuthenticationNotificationCopyWith<$Res> {
  _$AuthenticationNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationNotifySuccessImplCopyWith<$Res>
    implements $AuthenticationNotificationCopyWith<$Res> {
  factory _$$NotificationNotifySuccessImplCopyWith(
          _$NotificationNotifySuccessImpl value,
          $Res Function(_$NotificationNotifySuccessImpl) then) =
      __$$NotificationNotifySuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description});
}

/// @nodoc
class __$$NotificationNotifySuccessImplCopyWithImpl<$Res>
    extends _$AuthenticationNotificationCopyWithImpl<$Res,
        _$NotificationNotifySuccessImpl>
    implements _$$NotificationNotifySuccessImplCopyWith<$Res> {
  __$$NotificationNotifySuccessImplCopyWithImpl(
      _$NotificationNotifySuccessImpl _value,
      $Res Function(_$NotificationNotifySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
  }) {
    return _then(_$NotificationNotifySuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationNotifySuccessImpl implements _NotificationNotifySuccess {
  _$NotificationNotifySuccessImpl(
      {required this.message, required this.description});

  @override
  final String message;
  @override
  final String description;

  @override
  String toString() {
    return 'AuthenticationNotification.notifySuccess(message: $message, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationNotifySuccessImplCopyWith<_$NotificationNotifySuccessImpl>
      get copyWith => __$$NotificationNotifySuccessImplCopyWithImpl<
          _$NotificationNotifySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String description) notifySuccess,
    required TResult Function(String message, String description) notifyFailed,
  }) {
    return notifySuccess(message, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description)? notifySuccess,
    TResult? Function(String message, String description)? notifyFailed,
  }) {
    return notifySuccess?.call(message, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description)? notifySuccess,
    TResult Function(String message, String description)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifySuccess != null) {
      return notifySuccess(message, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationNotifySuccess value) notifySuccess,
    required TResult Function(_NotificationNotifyFailed value) notifyFailed,
  }) {
    return notifySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult? Function(_NotificationNotifyFailed value)? notifyFailed,
  }) {
    return notifySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult Function(_NotificationNotifyFailed value)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifySuccess != null) {
      return notifySuccess(this);
    }
    return orElse();
  }
}

abstract class _NotificationNotifySuccess
    implements AuthenticationNotification {
  factory _NotificationNotifySuccess(
      {required final String message,
      required final String description}) = _$NotificationNotifySuccessImpl;

  @override
  String get message;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$NotificationNotifySuccessImplCopyWith<_$NotificationNotifySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationNotifyFailedImplCopyWith<$Res>
    implements $AuthenticationNotificationCopyWith<$Res> {
  factory _$$NotificationNotifyFailedImplCopyWith(
          _$NotificationNotifyFailedImpl value,
          $Res Function(_$NotificationNotifyFailedImpl) then) =
      __$$NotificationNotifyFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description});
}

/// @nodoc
class __$$NotificationNotifyFailedImplCopyWithImpl<$Res>
    extends _$AuthenticationNotificationCopyWithImpl<$Res,
        _$NotificationNotifyFailedImpl>
    implements _$$NotificationNotifyFailedImplCopyWith<$Res> {
  __$$NotificationNotifyFailedImplCopyWithImpl(
      _$NotificationNotifyFailedImpl _value,
      $Res Function(_$NotificationNotifyFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
  }) {
    return _then(_$NotificationNotifyFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationNotifyFailedImpl implements _NotificationNotifyFailed {
  _$NotificationNotifyFailedImpl(
      {required this.message, required this.description});

  @override
  final String message;
  @override
  final String description;

  @override
  String toString() {
    return 'AuthenticationNotification.notifyFailed(message: $message, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationNotifyFailedImplCopyWith<_$NotificationNotifyFailedImpl>
      get copyWith => __$$NotificationNotifyFailedImplCopyWithImpl<
          _$NotificationNotifyFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String description) notifySuccess,
    required TResult Function(String message, String description) notifyFailed,
  }) {
    return notifyFailed(message, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description)? notifySuccess,
    TResult? Function(String message, String description)? notifyFailed,
  }) {
    return notifyFailed?.call(message, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description)? notifySuccess,
    TResult Function(String message, String description)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifyFailed != null) {
      return notifyFailed(message, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationNotifySuccess value) notifySuccess,
    required TResult Function(_NotificationNotifyFailed value) notifyFailed,
  }) {
    return notifyFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult? Function(_NotificationNotifyFailed value)? notifyFailed,
  }) {
    return notifyFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult Function(_NotificationNotifyFailed value)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifyFailed != null) {
      return notifyFailed(this);
    }
    return orElse();
  }
}

abstract class _NotificationNotifyFailed implements AuthenticationNotification {
  factory _NotificationNotifyFailed(
      {required final String message,
      required final String description}) = _$NotificationNotifyFailedImpl;

  @override
  String get message;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$NotificationNotifyFailedImplCopyWith<_$NotificationNotifyFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
