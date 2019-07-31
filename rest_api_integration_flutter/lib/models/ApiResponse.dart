import 'package:rest_api_integration_flutter/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => new ApiResponse(
    result: json['result'] as String,
    message: json['message'] as String,
    user: json['user'] == null
        ? null
        : new User.fromJson(json['user'] as Map<String, dynamic>));

abstract class _$ApiResponseSerializerMixin {
  String get result;
  String get message;
  User get user;

  Map<String, dynamic> toJson() => <String, dynamic>{'result': result, 'message': message, 'user': user};
}

@JsonSerializable()
class ApiResponse extends Object with _$ApiResponseSerializerMixin {
  String result;
  String message;
  User user;

  ApiResponse({this.result, this.message, this.user});

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
}
