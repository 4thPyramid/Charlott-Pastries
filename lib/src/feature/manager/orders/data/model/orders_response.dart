import 'package:json_annotation/json_annotation.dart';

part 'orders_response.g.dart';

@JsonSerializable()
class OrdersResponse {
  final List<Order> orders;

  OrdersResponse({
    required this.orders,
  });

  factory OrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersResponseToJson(this);
}

@JsonSerializable()
class Order {
  final int id;
  @JsonKey(name: 'customer_name')
  final String customerName;

  @JsonKey(name: 'order_type')
  final String orderType;
  final String status;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  final String? image;

  Order({
    required this.id,
    required this.customerName,
    required this.orderType,
    required this.status,
    this.deliveryDate,
    this.image,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}