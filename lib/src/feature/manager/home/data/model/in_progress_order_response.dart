import 'package:json_annotation/json_annotation.dart';

part 'in_progress_order_response.g.dart';

@JsonSerializable()
class InProgressOrderResponse {
  final List<InProgressOrder> orders;
 // final int rate;

  InProgressOrderResponse({
    required this.orders,
   // required this.rate,
  });

  factory InProgressOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$InProgressOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InProgressOrderResponseToJson(this);
}

@JsonSerializable()
class InProgressOrder {
  final int id;
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @JsonKey(name: 'order_details')
  final String? orderDetails;
  @JsonKey(name: 'order_type')
  final String orderType;

  InProgressOrder({
    required this.id,
     this.customerName,
     this.orderDetails,
    required this.orderType,
  });

  factory InProgressOrder.fromJson(Map<String, dynamic> json) => _$InProgressOrderFromJson(json);

  Map<String, dynamic> toJson() => _$InProgressOrderToJson(this);
}