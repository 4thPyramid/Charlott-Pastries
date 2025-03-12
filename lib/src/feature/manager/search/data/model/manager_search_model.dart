import 'package:json_annotation/json_annotation.dart';

part 'manager_search_model.g.dart';

@JsonSerializable()
class ManagerSearchModel {
  final int id;
  @JsonKey(name: 'order_type')
  final String orderType;
  final String status;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  @JsonKey(name: 'customer_name')
  final String? customerName;

  ManagerSearchModel({
    required this.id,
    required this.orderType,
    required this.status,
    this.deliveryDate,
    this.customerName,
  });

  factory ManagerSearchModel.fromJson(Map<String, dynamic> json) =>
      _$ManagerSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$ManagerSearchModelToJson(this);
}
