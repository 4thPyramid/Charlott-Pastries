import 'package:json_annotation/json_annotation.dart';

import 'user_model.dart'; // استيراد نموذج User

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String key;
  final User user;
  final String token;

  LoginResponse({
    required this.key,
    required this.user,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

