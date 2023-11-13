import 'package:dio/dio.dart';

import 'package:wms_v2/src/core/error/error.dart';

abstract class ErrorResponse {
  Error handle(DioException exception);
}

class ErrorResponseImpl implements ErrorResponse {
  @override
  Error handle(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.badResponse:
        return HttpInternalServerError(exception.response!.data['message'],
            exception.response!.data['description']);
      case DioExceptionType.connectionTimeout:
        return const HttpConnectionError(
            'Error', 'Failed to connect to the network');
      case DioExceptionType.connectionError:
        return const HttpConnectionError('Error', 'Network is not available');
      default:
        return const HttpUnknownError('Error', 'Unknown error');
    }
  }
}
