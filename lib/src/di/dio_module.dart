// import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:wms_v2/src/core/token/token.dart';
import 'package:wms_v2/src/config/app_config.dart';
// import 'package:wms_v2/src/core/network/dio_connectivity_request_retrier.dart';
// import 'package:wms_v2/src/core/network/logging_interceptor.dart';
// import 'package:wms_v2/src/core/network/retry_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wms_v2/src/core/cookies/cookie.dart';
import 'package:wms_v2/src/di/injection.dart';

class DioModule {
  DioModule._();

  static const String dioInstanceName = 'dioInstance';
  static final GetIt _injection = Injection.instance;

  static void setup() {
    _setupDio();
  }

  static void _setupDio() {
    _injection.registerLazySingleton<Dio>(
      () {
        final options = BaseOptions(
          baseUrl: AppConfig.apiUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 10),
          contentType: 'application/json',
        );
        final Dio dio = Dio(options);
        dio.interceptors.addAll(<Interceptor>[_loggingInterceptor(dio)]);
        // dio.interceptors.add(
        //   RetryOnConnectionChangeInterceptor(
        //     requestRetrier:
        //     DioConnectivityRequestRetrier(
        //       dio: dio,
        //       connectivity: Connectivity(),
        //     ),
        //   ),
        // );
        if (!kReleaseMode) {
          dio.interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
              request: false,
            ),
          );
        }
        return dio;
      },
      instanceName: dioInstanceName,
    );
  }

  static Interceptor _loggingInterceptor(Dio dio) {
    return InterceptorsWrapper(
      onResponse: (response, handler) async {
        if (!response.realUri.path.contains('sign-in')) {
          return handler.next(response);
        }

        Token.saveTokenToLocalStorage(response.data['data']);
        final res = await Cookie.saveCookieToLocal(response);
        return handler.next(res);
      },
      onRequest: (options, handler) async {
        if (options.uri.path.contains('sign-out')) {
          await Token.deleteTokenOnLocalStorage();
          await Cookie.deleteCookieOnLocal();
          return handler.next(options);
        }

        options.headers['Accept'] = 'application/json';
        var token = await Token.getTokenOnLocalStorage();
        options.headers['Authorization'] = 'Bearer $token';
        return handler.next(options);
      },
      // onError: (e, handler) async {
      //   if (e.response?.data['message'] == 'Unauthorized') {
      //     final newToken = await refreshToken();
      //     if (newToken != null) {
      //       dio.options.headers['Authorization'] = 'Bearer $newToken';
      //       return handler.resolve(await dio.fetch(e.requestOptions));
      //     }
      //   }
      // },
    );
  }

  // bool isExpired(DateTime time, Duration limit) {
  //   final expiresIn = time.add(limit);
  //   return DateTime.now().isAfter(expiresIn);
  // }

  // Future<String?> refreshToken() async {
  //   try {
  //     // var test = isExp
  //     final response = await dio.get('refresh-token');
  //     final newToken = response.data['data'];
  //     var storage = StorageItem('token', newToken);
  //     StorageService().writeSecureData(storage);
  //     return newToken;
  //   } catch (e) {
  //     var token = await StorageService().readSecureData('token');
  //     var storage = StorageItem('token', token);
  //     StorageService().deleteSecureData(storage);
  //   }

  //   return null;
  // }
}
