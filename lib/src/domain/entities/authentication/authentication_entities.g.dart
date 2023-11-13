// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationEntities _$AuthenticationEntitiesFromJson(
        Map<String, dynamic> json) =>
    AuthenticationEntities(
      json['data'],
      json['message'] as String,
      json['description'] as String?,
      json['status'] as String,
    );

Map<String, dynamic> _$AuthenticationEntitiesToJson(
        AuthenticationEntities instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'description': instance.description,
      'status': instance.status,
    };
