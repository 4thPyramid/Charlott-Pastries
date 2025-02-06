
import 'package:json_annotation/json_annotation.dart';

part 'refused_orders_response.g.dart';

@JsonSerializable()
class RefusedOrderResponse {
  final List<RefusedOrder> orders;

  RefusedOrderResponse({required this.orders});

  factory RefusedOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$RefusedOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RefusedOrderResponseToJson(this);
}

@JsonSerializable()
class RefusedOrder {
  final int id;
  @JsonKey(name: 'order_type')
  final String orderType;
  final String status;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'time_difference')
  final String timeDifference;

  RefusedOrder({
    required this.id,
    required this.status,
    required this.orderType,
    required this.updatedAt,
    required this.timeDifference,
  });

  factory RefusedOrder.fromJson(Map<String, dynamic> json) =>
      _$RefusedOrderFromJson(json);

  Map<String, dynamic> toJson() => _$RefusedOrderToJson(this);
}