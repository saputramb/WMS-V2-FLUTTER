import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:wms_v2/src/common/typedef/typedef.dart';
import 'package:wms_v2/src/domain/entities/authentication/authentication_entities.dart';

part 'authentication_datasource.g.dart';

@RestApi()
abstract class AuthenticationDataSource {
  factory AuthenticationDataSource(Dio dio, {String baseUrl}) =
      _AuthenticationDataSource;

  @POST('/sign-in')
  Future<AuthenticationEntities> signIn(
    @Body() JSON body,
  );

  @DELETE('/sign-out?device=mobile')
  Future<AuthenticationEntities> signOut(
    @Body() JSON body
  );
}
