
import 'package:json_annotation/json_annotation.dart';

part 'accept_order_response.g.dart'; 

@JsonSerializable()
class AcceptOrderResponse {
  final String message;
  @JsonKey(name: 'order_id')
  final int orderId;
  @JsonKey(name: 'manager_id')
  final int managerId;
  final String status;

  AcceptOrderResponse({
    required this.message,
    required this.orderId,
    required this.managerId,
    required this.status,
  });

  factory AcceptOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$AcceptOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AcceptOrderResponseToJson(this);
}