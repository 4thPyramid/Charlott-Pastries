import 'dart:io';

import 'package:dio/dio.dart';
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

  factory SalesRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$SalesRegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SalesRegisterRequestToJson(this);


 Future<Map<String, dynamic>> toFormData() async {
    final map = _$SalesRegisterRequestToJson(this);
    
    if (image != null) {
      String fileName = image!.path.split('/').last;
      map['image'] = await MultipartFile.fromFile(
        image!.path,
        filename: fileName,
      );
    }
    
    return map;
  }

}
