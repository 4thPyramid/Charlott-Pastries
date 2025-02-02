// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChefRegisterRequest _$ChefRegisterRequestFromJson(Map<String, dynamic> json) =>
    ChefRegisterRequest(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      branchId: (json['branch_id'] as num).toInt(),
      password: json['password'] as String,
      specializationId: (json['specialization_id'] as num).toInt(),
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$ChefRegisterRequestToJson(
        ChefRegisterRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'branch_id': instance.branchId,
      'specialization_id': instance.specializationId,
      'password': instance.password,
      'bio': instance.bio,
    };
