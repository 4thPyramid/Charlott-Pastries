// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_employee_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

AllChefs _$AllChefsFromJson(Map<String, dynamic> json) => AllChefs(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      specializationId: (json['specialization_id'] as num).toInt(),
      specialization: Specialization.fromJson(
          json['specialization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AllChefsToJson(AllChefs instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'created_at': instance.createdAt.toIso8601String(),
      'specialization_id': instance.specializationId,
      'specialization': instance.specialization,
    };

AllDeliveries _$AllDeliveriesFromJson(Map<String, dynamic> json) =>
    AllDeliveries(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      key: json['key'] as String,
    );

Map<String, dynamic> _$AllDeliveriesToJson(AllDeliveries instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'created_at': instance.createdAt.toIso8601String(),
      'key': instance.key,
    };

AllEmployeeResponse _$AllEmployeeResponseFromJson(Map<String, dynamic> json) =>
    AllEmployeeResponse(
      chef: (json['chef'] as List<dynamic>)
          .map((e) => AllChefs.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: (json['delivery'] as List<dynamic>)
          .map((e) => AllDeliveries.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllEmployeeResponseToJson(
        AllEmployeeResponse instance) =>
    <String, dynamic>{
      'chef': instance.chef,
      'delivery': instance.delivery,
    };
