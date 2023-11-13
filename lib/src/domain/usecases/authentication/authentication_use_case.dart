import 'package:dartz/dartz.dart';
import 'package:wms_v2/src/common/typedef/typedef.dart';
import 'package:wms_v2/src/core/error/error.dart';
// import 'package:wms_v2/src/core/error/failure.dart';
import 'package:wms_v2/src/domain/entities/authentication/authentication_entities.dart';

abstract class AuthenticationUseCase {
  Future<Either<Error, AuthenticationEntities>> signIn(JSON body);
  Future<Either<Error, AuthenticationEntities>> signOut();
}
