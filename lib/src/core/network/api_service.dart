// import 'package:dio/dio.dart';
// import 'package:wms_v2/src/core/network/api_client.dart';
// import 'package:wms_v2/src/common/typedef/typedef.dart';

// abstract class ApiService {
//   Future<Response> get(String endpoint, {Object? body, JSON? queryParameters});
//   Future<Response> post(String endpoint, {Object? body, JSON? queryParameters});
//   Future<Response> patch(String endpoint,
//       {Object? body, FormData? bodyForm, JSON? queryParameters});
//   Future<Response> put(String endpoint,
//       {Object? body, FormData? bodyForm, JSON? queryParameters});
//   Future<Response> delete(String endpoint, {JSON? queryParameters});
// }

// class ApiServiceImpl implements ApiService {
//   final ApiClient apiClient;

//   ApiServiceImpl({required this.apiClient});

//   // Map<String, String> defaultHeaders = {
//   //   'Content-Type': 'application/json',
//   //   'Accept': 'application/json',
//   // };

//   // addTokenToHeader() {
//   //   var token = '';
//   //   _mergedHeaders({'Authorization': 'Bearer $token'});
//   // }

//   // Map<String, String> _mergedHeaders(Map<String, String> headers) =>
//   //     {...defaultHeaders, ...headers};

//   @override
//   Future<Response> get(String endpoint,
//       {Object? body, JSON? queryParameters}) async {
//     final response = await apiClient.client
//         .get(endpoint, data: body, queryParameters: queryParameters);
//     return response;
//   }

//   @override
//   Future<Response> post(String endpoint,
//       {Object? body, JSON? queryParameters}) async {
//     final response = await apiClient.client
//         .post(endpoint, data: body, queryParameters: queryParameters);
//     return response;
//   }

//   @override
//   Future<Response> patch(String endpoint,
//       {Object? body, FormData? bodyForm, JSON? queryParameters}) async {
//     final response = await apiClient.client.patch(endpoint,
//         data: body ?? bodyForm, queryParameters: queryParameters);
//     return response;
//   }

//   @override
//   Future<Response> put(String endpoint,
//       {Object? body, FormData? bodyForm, JSON? queryParameters}) async {
//     final response = await apiClient.client.patch(endpoint,
//         data: body ?? bodyForm, queryParameters: queryParameters);
//     return response;
//   }

//   @override
//   Future<Response> delete(String endpoint, {JSON? queryParameters}) async {
//     final response = await apiClient.client
//         .patch(endpoint, queryParameters: queryParameters);
//     return response;
//   }
// }
