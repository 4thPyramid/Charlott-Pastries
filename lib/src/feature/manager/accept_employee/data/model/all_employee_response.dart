import 'package:json_annotation/json_annotation.dart';

part 'all_employee_response.g.dart'; // This will be generated by build_runner

@JsonSerializable()
class Specialization {
  final int id;
  final String name;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Specialization({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}

@JsonSerializable()
class AllChefs {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String email;
  final String phone;
  final String? image;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'specialization_id')
  final int specializationId;
  final Specialization specialization;

  AllChefs({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
     this.image,
    required this.createdAt,
    required this.specializationId,
    required this.specialization,
  });

  factory AllChefs.fromJson(Map<String, dynamic> json) =>
      _$AllChefsFromJson(json);

  Map<String, dynamic> toJson() => _$AllChefsToJson(this);
}

@JsonSerializable()
class AllDeliveries {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String email;
  final String phone;
  final String? image;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final String key;

  AllDeliveries({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
     this.image,
    required this.createdAt,
    required this.key,
  });

  factory AllDeliveries.fromJson(Map<String, dynamic> json) =>
      _$AllDeliveriesFromJson(json);

  Map<String, dynamic> toJson() => _$AllDeliveriesToJson(this);
}

@JsonSerializable()
class AllEmployeeResponse {
  final List<AllChefs> chef;
  final List<AllDeliveries> delivery;

  AllEmployeeResponse({
    required this.chef,
    required this.delivery,
  });

  factory AllEmployeeResponse.fromJson(Map<String, dynamic> json) =>
      _$AllEmployeeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllEmployeeResponseToJson(this);
}