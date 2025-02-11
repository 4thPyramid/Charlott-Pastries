import 'package:json_annotation/json_annotation.dart';

part 'orders_statues_response_model.g.dart';

@JsonSerializable()
class OrdersStatuesResponseModel {
  final List<OrderItem> orders;

  OrdersStatuesResponseModel({required this.orders});

  factory OrdersStatuesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersStatuesResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrdersStatuesResponseModelToJson(this);
}

@JsonSerializable()
class OrderItem {
  final int id;
  final int quantity;
  @JsonKey(name: 'flower_quantity')
  final int flowerQuantity;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  OrderItem({
    required this.id,
    required this.quantity,
    required this.flowerQuantity,
    required this.updatedAt,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}
