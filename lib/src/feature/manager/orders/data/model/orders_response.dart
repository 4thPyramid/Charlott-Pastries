import 'package:json_annotation/json_annotation.dart';

import '../../../../orderDetails/data/model/order_details_response.dart';

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
  @JsonKey(name: 'delivery_id')
  final int? deliveryId;
  @JsonKey(name: 'customer_name')
  final String? customerName;

  @JsonKey(name: 'order_type')
  final String orderType;
  final String status;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  final List<OrderImageDetails> images;

  Order({
    required this.id,
    this.deliveryId,
    this.customerName,
    required this.orderType,
    required this.status,
    this.deliveryDate,
    required this.images,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
