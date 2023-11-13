import 'package:dartz/dartz.dart';
import 'package:wms_v2/src/common/typedef/typedef.dart';
import 'package:wms_v2/src/core/error/error.dart';
import 'package:wms_v2/src/domain/entities/authentication/authentication_entities.dart';
import 'package:wms_v2/src/domain/repositories/authentication/authentication_repository.dart';
import 'package:wms_v2/src/domain/usecases/authentication/authentication_use_case.dart';

class AuthenticationUseCaseImpl implements AuthenticationUseCase {
  final AuthenticationRepostory authenticationRepostory;

  AuthenticationUseCaseImpl(this.authenticationRepostory);

  @override
  Future<Either<Error, AuthenticationEntities>> signIn(JSON body) =>
      authenticationRepostory.signIn(body);

  @override
  Future<Either<Error, AuthenticationEntities>> signOut() =>
      authenticationRepostory.signOut();
}
