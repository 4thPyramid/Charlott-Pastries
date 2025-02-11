import 'package:json_annotation/json_annotation.dart';

part 'sales_search_model.g.dart';

@JsonSerializable()
class SalesSearchModel {
  final int id;
  @JsonKey(name: 'order_type')
  final String orderType;
  final String status;
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  @JsonKey(name: 'customer_name')
  final String customerName;

  SalesSearchModel({
    required this.id,
    required this.orderType,
    required this.status,
    required this.deliveryDate,
    required this.customerName,
  });

  factory SalesSearchModel.fromJson(Map<String, dynamic> json) =>
      _$SalesSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$SalesSearchModelToJson(this);
}
