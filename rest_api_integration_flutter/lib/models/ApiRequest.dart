import 'package:rest_api_integration_flutter/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

ApiRequest _$ApiRequestFromJson(Map<String, dynamic> json) => new ApiRequest(
  operation: json['operation'] as String,
  user: json['user'] == null
    ? null
    : new User.fromJson(json['user'] as Map<String, dynamic>)
);

abstract class _$ApiRequestSerializerMixin {
  String get operation;
  User get user;
  Map<String, dynamic> toJson() => <String, dynamic>{'operation': operation, 'user': user};
}

@JsonSerializable()
class ApiRequest extends Object with _$ApiRequestSerializerMixin {
  String operation;
  User user;
  ApiRequest({this.operation, this.user});
  factory ApiRequest.fromJson(Map<String, dynamic> json) => _$ApiRequestFromJson(json);
}
