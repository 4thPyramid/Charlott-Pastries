import 'package:json_annotation/json_annotation.dart';

part 'employee_response.g.dart'; 

@JsonSerializable()
class Employee {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String phone;
  final String? image;
  final String? specialization;
  @JsonKey(name: 'canTakeOrder')
  final String canTakeOrder;
  @JsonKey(name: 'orderCount')
  final int orderCount;

  Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    this.image,
    this.specialization,
    required this.canTakeOrder,
    required this.orderCount,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}

@JsonSerializable()
class EmployeesResponse {
  final List<Employee> employees;

  EmployeesResponse({required this.employees});

  factory EmployeesResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeesResponseToJson(this);
}