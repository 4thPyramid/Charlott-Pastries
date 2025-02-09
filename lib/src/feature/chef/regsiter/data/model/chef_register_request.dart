import 'dart:io';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chef_register_request.g.dart';

@JsonSerializable()
class ChefRegisterRequest {
  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  final String email;
  final String phone;

  @JsonKey(name: 'branch_id')
  final int branchId;
  @JsonKey(name: 'specialization_id')
  final int specializationId;
  final String password;
  final String bio;
  @JsonKey(ignore: true)
  final File? image;

  ChefRegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.branchId,
    required this.password,
    required this.specializationId,
    required this.bio,
    this.image,
  });

  // Factory constructor for JSON serialization
  factory ChefRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$ChefRegisterRequestFromJson(json);

  // Convert to JSON
  Map<String, dynamic> toJson() => _$ChefRegisterRequestToJson(this);

  
 Future<Map<String, dynamic>> toFormData() async {
    final map = _$ChefRegisterRequestToJson(this);
    
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
