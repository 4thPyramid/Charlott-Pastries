import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'sales_register_request.g.dart';


@JsonSerializable()
class SalesRegisterRequest {
  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  final String email;
  final String phone;

  final String password;

  @JsonKey(ignore: true)
  final File? image;

  SalesRegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.password,
    this.image,
  });

  // Factory constructor for JSON serialization
  factory SalesRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$SalesRegisterRequestFromJson(json);

  // Convert to JSON
  Map<String, dynamic> toJson() => _$SalesRegisterRequestToJson(this);
}
