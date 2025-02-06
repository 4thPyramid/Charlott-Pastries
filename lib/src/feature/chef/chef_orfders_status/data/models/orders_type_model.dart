import 'package:json_annotation/json_annotation.dart';

part 'orders_type_model.g.dart';

@JsonSerializable()
class OrdersTypeModel {
  final List<Order>? orders;

  OrdersTypeModel({this.orders});

  factory OrdersTypeModel.fromJson(Map<String, dynamic> json) => _$OrdersTypeModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrdersTypeModelToJson(this);
}

@JsonSerializable()
class Order {
  final int id;
  final String? orderType;
  final String? orderDetails;
  final String? deliveryDate;
  final int? quantity;
  final String? updatedAt;

  Order({
    required this.id,
    this.orderType,
    this.orderDetails,
    this.deliveryDate,
    this.quantity,
    this.updatedAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
