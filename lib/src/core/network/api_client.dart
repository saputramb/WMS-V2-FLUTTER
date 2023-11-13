// import 'package:connectivity/connectivity.dart';
// import 'package:dio/dio.dart';
// import 'package:wms_v2/src/config/app_config.dart';
// import 'package:wms_v2/src/core/network/dio_connectivity_request_retrier.dart';
// import 'package:wms_v2/src/core/network/retry_interceptor.dart';
// import 'package:wms_v2/src/common/localstorages/storage_item.dart';
// import 'package:wms_v2/src/common/localstorages/storage_service.dart';

// class ApiClient {
//   final AppConfig config;

//   ApiClient({required this.config});
//   Dio get client => _getDio();
//   // Dio(
//   //   BaseOptions(
//   //     baseUrl: AppConfig.apiUrl!,
//   //     connectTimeout: const Duration(seconds: 10),
//   //     receiveTimeout: const Duration(seconds: 10),
//   //     contentType: 'application/json',
//   //   ),
//   // );

//   Dio _getDio() {
//     final options = BaseOptions(
//       baseUrl: AppConfig.apiUrl,
//       connectTimeout: const Duration(seconds: 20),
//       receiveTimeout: const Duration(seconds: 20),
//       contentType: 'application/json',
//     );
//     final Dio client = Dio(options);
//     client.interceptors.addAll(<Interceptor>[_loggingInterceptor()]);
//     client.interceptors.add(
//       RetryOnConnectionChangeInterceptor(
//         requestRetrier: DioConnectivityRequestRetrier(
//           dio: Dio(),
//           connectivity: Connectivity(),
//         ),
//       ),
//     );

//     return client;
//   }

//   Interceptor _loggingInterceptor() {
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
//             client.options.headers['Authorization'] = 'Bearer $newToken';
//             return handler.resolve(await client.fetch(e.requestOptions));
//           }
//         }
//       },
//     );
//   }

//   bool isExpired(DateTime time, Duration limit) {
//     final expiresIn = time.add(limit);
//     return DateTime.now().isAfter(expiresIn);
//   }

//   Future<String?> refreshToken() async {
//     try {
//       // var test = isExp
//       final response = await client.get('refresh-token');
//       final newToken = response.data['data'];
//       var storage = StorageItem('token', newToken);
//       StorageService().writeSecureData(storage);
//       return newToken;
//     } catch (e) {
//       var token = await StorageService().readSecureData('token');
//       var storage = StorageItem('token', token);
//       StorageService().deleteSecureData(storage);
//     }

//     return null;
//   }
// }
