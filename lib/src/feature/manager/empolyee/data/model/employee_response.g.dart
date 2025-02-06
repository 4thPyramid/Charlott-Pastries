// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String?,
      specialization: json['specialization'] as String?,
      canTakeOrder: json['canTakeOrder'] as String,
      orderCount: (json['orderCount'] as num).toInt(),
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'image': instance.image,
      'specialization': instance.specialization,
      'canTakeOrder': instance.canTakeOrder,
      'orderCount': instance.orderCount,
    };

EmployeesResponse _$EmployeesResponseFromJson(Map<String, dynamic> json) =>
    EmployeesResponse(
      employees: (json['employees'] as List<dynamic>)
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmployeesResponseToJson(EmployeesResponse instance) =>
    <String, dynamic>{
      'employees': instance.employees,
    };
