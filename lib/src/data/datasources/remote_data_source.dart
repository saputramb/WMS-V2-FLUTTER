// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:wms_v2/src/core/error/failure.dart';
// import 'package:wms_v2/src/config/app_config.dart';
// import 'package:wms_v2/src/core/network/api_service.dart';

// abstract class RemoteDataSource {
//   Future<Either<Failure, dynamic>> signIn(Object body);
// }

// class RemoteDataSourceImpl implements RemoteDataSource {
//   ApiService apiService;

//   RemoteDataSourceImpl({required this.apiService});

//   @override
//   Future<Either<Failure, dynamic>> signIn(Object body) async {
//     try {
//       Response response = await apiService.post(AppConfig.signIn, body: body);
//       return Right(response);
//     } on DioException catch (_) {
//       return Left(ServerFailure(error: _.response!.data));
//     }
//   }
// }
