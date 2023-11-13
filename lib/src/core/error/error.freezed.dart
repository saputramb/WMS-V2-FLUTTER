// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Error {
  String get message => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String description)
        httpInternalServerError,
    required TResult Function(String message, String description)
        httpConnectionError,
    required TResult Function(String message, String description)
        httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description)?
        httpInternalServerError,
    TResult? Function(String message, String description)? httpConnectionError,
    TResult? Function(String message, String description)? httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description)?
        httpInternalServerError,
    TResult Function(String message, String description)? httpConnectionError,
    TResult Function(String message, String description)? httpUnknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpConnectionError value) httpConnectionError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpConnectionError value)? httpConnectionError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpConnectionError value)? httpConnectionError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call({String message, String description});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

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
abstract class _$$HttpInternalServerErrorImplCopyWith<$Res>
    implements $ErrorCopyWith<$Res> {
  factory _$$HttpInternalServerErrorImplCopyWith(
          _$HttpInternalServerErrorImpl value,
          $Res Function(_$HttpInternalServerErrorImpl) then) =
      __$$HttpInternalServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description});
}

/// @nodoc
class __$$HttpInternalServerErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$HttpInternalServerErrorImpl>
    implements _$$HttpInternalServerErrorImplCopyWith<$Res> {
  __$$HttpInternalServerErrorImplCopyWithImpl(
      _$HttpInternalServerErrorImpl _value,
      $Res Function(_$HttpInternalServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
  }) {
    return _then(_$HttpInternalServerErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpInternalServerErrorImpl implements HttpInternalServerError {
  const _$HttpInternalServerErrorImpl(this.message, this.description);

  @override
  final String message;
  @override
  final String description;

  @override
  String toString() {
    return 'Error.httpInternalServerError(message: $message, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpInternalServerErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpInternalServerErrorImplCopyWith<_$HttpInternalServerErrorImpl>
      get copyWith => __$$HttpInternalServerErrorImplCopyWithImpl<
          _$HttpInternalServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String description)
        httpInternalServerError,
    required TResult Function(String message, String description)
        httpConnectionError,
    required TResult Function(String message, String description)
        httpUnknownError,
  }) {
    return httpInternalServerError(message, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description)?
        httpInternalServerError,
    TResult? Function(String message, String description)? httpConnectionError,
    TResult? Function(String message, String description)? httpUnknownError,
  }) {
    return httpInternalServerError?.call(message, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description)?
        httpInternalServerError,
    TResult Function(String message, String description)? httpConnectionError,
    TResult Function(String message, String description)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(message, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpConnectionError value) httpConnectionError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
  }) {
    return httpInternalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpConnectionError value)? httpConnectionError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
  }) {
    return httpInternalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpConnectionError value)? httpConnectionError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpInternalServerError != null) {
      return httpInternalServerError(this);
    }
    return orElse();
  }
}

abstract class HttpInternalServerError implements Error {
  const factory HttpInternalServerError(
          final String message, final String description) =
      _$HttpInternalServerErrorImpl;

  @override
  String get message;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$HttpInternalServerErrorImplCopyWith<_$HttpInternalServerErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpConnectionErrorImplCopyWith<$Res>
    implements $ErrorCopyWith<$Res> {
  factory _$$HttpConnectionErrorImplCopyWith(_$HttpConnectionErrorImpl value,
          $Res Function(_$HttpConnectionErrorImpl) then) =
      __$$HttpConnectionErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description});
}

/// @nodoc
class __$$HttpConnectionErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$HttpConnectionErrorImpl>
    implements _$$HttpConnectionErrorImplCopyWith<$Res> {
  __$$HttpConnectionErrorImplCopyWithImpl(_$HttpConnectionErrorImpl _value,
      $Res Function(_$HttpConnectionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
  }) {
    return _then(_$HttpConnectionErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpConnectionErrorImpl implements HttpConnectionError {
  const _$HttpConnectionErrorImpl(this.message, this.description);

  @override
  final String message;
  @override
  final String description;

  @override
  String toString() {
    return 'Error.httpConnectionError(message: $message, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpConnectionErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpConnectionErrorImplCopyWith<_$HttpConnectionErrorImpl> get copyWith =>
      __$$HttpConnectionErrorImplCopyWithImpl<_$HttpConnectionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String description)
        httpInternalServerError,
    required TResult Function(String message, String description)
        httpConnectionError,
    required TResult Function(String message, String description)
        httpUnknownError,
  }) {
    return httpConnectionError(message, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description)?
        httpInternalServerError,
    TResult? Function(String message, String description)? httpConnectionError,
    TResult? Function(String message, String description)? httpUnknownError,
  }) {
    return httpConnectionError?.call(message, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description)?
        httpInternalServerError,
    TResult Function(String message, String description)? httpConnectionError,
    TResult Function(String message, String description)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpConnectionError != null) {
      return httpConnectionError(message, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpConnectionError value) httpConnectionError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
  }) {
    return httpConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpConnectionError value)? httpConnectionError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
  }) {
    return httpConnectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpConnectionError value)? httpConnectionError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpConnectionError != null) {
      return httpConnectionError(this);
    }
    return orElse();
  }
}

abstract class HttpConnectionError implements Error {
  const factory HttpConnectionError(
          final String message, final String description) =
      _$HttpConnectionErrorImpl;

  @override
  String get message;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$HttpConnectionErrorImplCopyWith<_$HttpConnectionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpUnknownErrorImplCopyWith<$Res>
    implements $ErrorCopyWith<$Res> {
  factory _$$HttpUnknownErrorImplCopyWith(_$HttpUnknownErrorImpl value,
          $Res Function(_$HttpUnknownErrorImpl) then) =
      __$$HttpUnknownErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description});
}

/// @nodoc
class __$$HttpUnknownErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$HttpUnknownErrorImpl>
    implements _$$HttpUnknownErrorImplCopyWith<$Res> {
  __$$HttpUnknownErrorImplCopyWithImpl(_$HttpUnknownErrorImpl _value,
      $Res Function(_$HttpUnknownErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
  }) {
    return _then(_$HttpUnknownErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpUnknownErrorImpl implements HttpUnknownError {
  const _$HttpUnknownErrorImpl(this.message, this.description);

  @override
  final String message;
  @override
  final String description;

  @override
  String toString() {
    return 'Error.httpUnknownError(message: $message, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpUnknownErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpUnknownErrorImplCopyWith<_$HttpUnknownErrorImpl> get copyWith =>
      __$$HttpUnknownErrorImplCopyWithImpl<_$HttpUnknownErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String description)
        httpInternalServerError,
    required TResult Function(String message, String description)
        httpConnectionError,
    required TResult Function(String message, String description)
        httpUnknownError,
  }) {
    return httpUnknownError(message, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description)?
        httpInternalServerError,
    TResult? Function(String message, String description)? httpConnectionError,
    TResult? Function(String message, String description)? httpUnknownError,
  }) {
    return httpUnknownError?.call(message, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description)?
        httpInternalServerError,
    TResult Function(String message, String description)? httpConnectionError,
    TResult Function(String message, String description)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(message, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HttpInternalServerError value)
        httpInternalServerError,
    required TResult Function(HttpConnectionError value) httpConnectionError,
    required TResult Function(HttpUnknownError value) httpUnknownError,
  }) {
    return httpUnknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HttpInternalServerError value)? httpInternalServerError,
    TResult? Function(HttpConnectionError value)? httpConnectionError,
    TResult? Function(HttpUnknownError value)? httpUnknownError,
  }) {
    return httpUnknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HttpInternalServerError value)? httpInternalServerError,
    TResult Function(HttpConnectionError value)? httpConnectionError,
    TResult Function(HttpUnknownError value)? httpUnknownError,
    required TResult orElse(),
  }) {
    if (httpUnknownError != null) {
      return httpUnknownError(this);
    }
    return orElse();
  }
}

abstract class HttpUnknownError implements Error {
  const factory HttpUnknownError(
      final String message, final String description) = _$HttpUnknownErrorImpl;

  @override
  String get message;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$HttpUnknownErrorImplCopyWith<_$HttpUnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
