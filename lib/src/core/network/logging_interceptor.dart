// import 'package:dio/dio.dart';
// import 'package:wms_v2/src/common/localstorages/storage_service.dart';

// class LoggingInterceptor {
//   Interceptor loggingInterceptor(Dio dio) {
//     return InterceptorsWrapper(
//       onRequest: (options, handler) async {
//         options.headers['Accept'] = 'application/json';
//         var token = await StorageService().readSecureData('token');
//         options.headers['Authorization'] = 'Bearer $token';
//         return handler.next(options);
//       },
//       onError: (e, handler) async {
//         if (e.response?.statusCode == 401) {
//           final newToken = await refreshToken();
//           if (newToken != null) {
//             dio.options.headers['Authorization'] = 'Bearer $newToken';
//             return handler.resolve(await dio.fetch(e.requestOptions));
//           }
//         }
//       },
//     );
//   }
// }
