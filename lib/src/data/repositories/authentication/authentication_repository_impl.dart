import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wms_v2/src/core/local_storages/storage_service.dart';
import 'package:wms_v2/src/common/typedef/typedef.dart';
import 'package:wms_v2/src/core/error/error_response.dart';
import 'package:wms_v2/src/data/datasources/authentication/authentication_datasource.dart';
import 'package:wms_v2/src/domain/entities/authentication/authentication_entities.dart';
import 'package:wms_v2/src/domain/repositories/authentication/authentication_repository.dart';
import 'package:wms_v2/src/core/error/error.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepostory {
  final AuthenticationDataSource authenticationDataSource;
  final ErrorResponse errorResponse;

  AuthenticationRepositoryImpl(
      {required this.authenticationDataSource, required this.errorResponse});

  @override
  Future<Either<Error, AuthenticationEntities>> signIn(JSON body) async {
    try {
      final result = await authenticationDataSource.signIn(body);

      return right(result);
    } on DioException catch (exception) {
      return left(errorResponse.handle(exception));
    }
  }

  @override
  Future<Either<Error, AuthenticationEntities>> signOut() async {
    try {
      var refreshToken = await StorageService().readSecureData('refreshToken');
      final result = await authenticationDataSource
          .signOut({'refresh_token': refreshToken});

      return right(result);
    } on DioException catch (exception) {
      return left(errorResponse.handle(exception));
    }
  }
}
