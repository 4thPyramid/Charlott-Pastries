// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManagerRegisterRequest _$ManagerRegisterRequestFromJson(
        Map<String, dynamic> json) =>
    ManagerRegisterRequest(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      branchId: (json['branch_id'] as num).toInt(),
      password: json['password'] as String,
    );

Map<String, dynamic> _$ManagerRegisterRequestToJson(
        ManagerRegisterRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'branch_id': instance.branchId,
      'password': instance.password,
    };
