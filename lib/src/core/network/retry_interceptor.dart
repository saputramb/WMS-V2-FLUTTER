// // ignore_for_file: avoid_renaming_method_parameters

// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:wms_v2/src/core/network/dio_connectivity_request_retrier.dart';

// class RetryOnConnectionChangeInterceptor extends Interceptor {
//   final DioConnectivityRequestRetrier? requestRetrier;

//   RetryOnConnectionChangeInterceptor({
//     required this.requestRetrier,
//   });

//   @override
//   Future onError(
//       DioException err, ErrorInterceptorHandler errorInterceptorHandler) async {
//     if (_shouldRetry(err)) {
//       try {
//         return requestRetrier!.scheduleRequestRetry(err.requestOptions);
//       } catch (e) {
//         return e;
//       }
//     }
//     return err;
//   }

//   bool _shouldRetry(DioException err) {
//     return err.type == DioExceptionType.badResponse &&
//         err.error != null &&
//         err.error is SocketException;
//   }
// }
