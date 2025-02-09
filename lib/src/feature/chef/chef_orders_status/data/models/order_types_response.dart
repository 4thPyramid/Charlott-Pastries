// order.dart
import 'package:json_annotation/json_annotation.dart';

part 'order_types_response.g.dart';

@JsonSerializable()
class OrderType {
  final int id;
  final int quantity;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  OrderType({
    required this.id,
    required this.quantity,
    required this.updatedAt,
  });

  factory OrderType.fromJson(Map<String, dynamic> json) => _$OrderTypeFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTypeToJson(this);
}

@JsonSerializable()
class OrderTypeResponse {
  final List<OrderType> orders;

  OrderTypeResponse({required this.orders});

  factory OrderTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTypeResponseToJson(this);
}