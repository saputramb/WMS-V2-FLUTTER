// import 'package:connectivity/connectivity.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// // import 'package:wms_v2/src/common/localstorages/storage_item.dart';
// // import 'package:wms_v2/src/common/localstorages/storage_service.dart';
// import 'package:wms_v2/src/config/app_config.dart';
// import 'package:wms_v2/src/core/network/dio_connectivity_request_retrier.dart';
// import 'package:wms_v2/src/core/network/retry_interceptor.dart';

// @module
// abstract class AppModule {
//   @singleton
//   Dio get dio => _getDio();

//   Dio _getDio() {
//     final options = BaseOptions(
//       baseUrl: AppConfig.apiUrl,
//       connectTimeout: const Duration(seconds: 10),
//       receiveTimeout: const Duration(seconds: 10),
//       contentType: 'application/json',
//     );
//     final Dio dio = Dio(options);
//     // dio.interceptors.addAll(<Interceptor>[_loggingInterceptor()]);
//     dio.interceptors.add(
//       RetryOnConnectionChangeInterceptor(
//         requestRetrier: DioConnectivityRequestRetrier(
//           dio: Dio(),
//           connectivity: Connectivity(),
//         ),
//       ),
//     );

//     if (!kReleaseMode) {
//       dio.interceptors.add(
//         PrettyDioLogger(
//           requestHeader: true,
//           requestBody: true,
//           responseHeader: true,
//           request: false,
//         ),
//       );
//     }

//     return dio;
//   }

//   // Interceptor _loggingInterceptor() {
//   //   return InterceptorsWrapper(
//   //     onRequest: (options, handler) async {
//   //       options.headers['Accept'] = 'application/json';
//   //       var token = await StorageService().readSecureData('token');
//   //       options.headers['Authorization'] = 'Bearer $token';
//   //       return handler.next(options);
//   //     },
//   //     onError: (e, handler) async {
//   //       if (e.response?.statusCode == 401) {
//   //         final newToken = await refreshToken();
//   //         if (newToken != null) {
//   //           dio.options.headers['Authorization'] = 'Bearer $newToken';
//   //           return handler.resolve(await dio.fetch(e.requestOptions));
//   //         }
//   //       }
//   //     },
//   //   );
//   // }

//   // bool isExpired(DateTime time, Duration limit) {
//   //   final expiresIn = time.add(limit);
//   //   return DateTime.now().isAfter(expiresIn);
//   // }

//   // Future<String?> refreshToken() async {
//   //   try {
//   //     // var test = isExp
//   //     final response = await dio.get('refresh-token');
//   //     final newToken = response.data['data'];
//   //     var storage = StorageItem('token', newToken);
//   //     StorageService().writeSecureData(storage);
//   //     return newToken;
//   //   } catch (e) {
//   //     var token = await StorageService().readSecureData('token');
//   //     var storage = StorageItem('token', token);
//   //     StorageService().deleteSecureData(storage);
//   //   }

//   //   return null;
//   // }
// }
