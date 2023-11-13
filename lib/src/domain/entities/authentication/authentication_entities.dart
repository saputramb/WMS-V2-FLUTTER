import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_entities.g.dart';

@JsonSerializable()
class AuthenticationEntities {
  AuthenticationEntities(
      this.data, this.message, this.description, this.status);

  @JsonKey(name: 'data')
  final dynamic data;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'status')
  final String status;

  factory AuthenticationEntities.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationEntitiesToJson(this);
}
