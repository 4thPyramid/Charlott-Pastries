import 'dart:io';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manager_register_request.g.dart';

@JsonSerializable()
class ManagerRegisterRequest {
  @JsonKey(name: 'first_name')
  final String firstName;
  
  @JsonKey(name: 'last_name')
  final String lastName;
  
  final String email;
  final String phone;
  
  @JsonKey(name: 'branch_id')
  final int branchId;
  
  final String password;
  
  @JsonKey(ignore: true)
  final File? image;

  ManagerRegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.branchId,
    required this.password,
    this.image,
  });

  // Factory constructor for JSON serialization
  factory ManagerRegisterRequest.fromJson(Map<String, dynamic> json) => 
      _$ManagerRegisterRequestFromJson(json);

  // Convert to JSON
  Map<String, dynamic> toJson() => _$ManagerRegisterRequestToJson(this);

 Future<Map<String, dynamic>> toFormData() async {
    final map = _$ManagerRegisterRequestToJson(this);
    
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
