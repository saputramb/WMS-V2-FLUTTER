import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class Error with _$Error {
  const factory Error.httpInternalServerError(String message, String description) =
      HttpInternalServerError;

  const factory Error.httpConnectionError(String message, String description) = HttpConnectionError;
  
  const factory Error.httpUnknownError(String message, String description) = HttpUnknownError;
}
