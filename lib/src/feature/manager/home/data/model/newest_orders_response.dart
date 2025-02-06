import 'package:json_annotation/json_annotation.dart';

part 'newest_orders_response.g.dart'; // ملف واحد مولد لجميع النماذج

@JsonSerializable()
class NewOrder {
  final int id;
  @JsonKey(name: 'order_type')
  final String orderType;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate; 
  @JsonKey(name: 'order_details')
  final String? orderDetails;

  NewOrder({
    required this.id,
    required this.orderType,
    this.deliveryDate,
    this.orderDetails,
  });

  factory NewOrder.fromJson(Map<String, dynamic> json) => _$NewOrderFromJson(json);

  Map<String, dynamic> toJson() => _$NewOrderToJson(this);
}

@JsonSerializable()
class NewestOrdersResponse {
  final List<NewOrder> orders;

  NewestOrdersResponse({
    required this.orders,
  });

  factory NewestOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$NewestOrdersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewestOrdersResponseToJson(this);
}