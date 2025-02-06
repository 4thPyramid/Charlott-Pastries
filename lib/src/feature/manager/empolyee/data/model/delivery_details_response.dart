import 'package:json_annotation/json_annotation.dart';

part 'delivery_details_response.g.dart';

@JsonSerializable()
class DeliveryDetails {
  final Delivery delivery;

  DeliveryDetails({
    required this.delivery,
  });

  factory DeliveryDetails.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryDetailsToJson(this);
}

@JsonSerializable()
class Delivery {
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String phone;
  final String? image;
  final String email;
  final int id;
  @JsonKey(name: 'delivered_orders_count')
  final int deliveredOrdersCount;
  final String canTakeOrder;
  final List<DeliveryOrder> orders;

  Delivery({
    required this.firstName,
    required this.lastName,
    required this.phone,
    this.image,
    required this.deliveredOrdersCount,
    required this.canTakeOrder,
    required this.email,
    required this.id,
    required this.orders,
  });

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryToJson(this);
}

@JsonSerializable()
class DeliveryOrder {
  @JsonKey(name: 'order_type')
  final String orderType;
  @JsonKey(name: 'order_details')
  final String? orderDetails;
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  @JsonKey(name: 'delivery_id')
  final int deliveryId;

  DeliveryOrder({
    required this.orderType,
    this.orderDetails,
    required this.deliveryDate,
    required this.deliveryId,
  });

  factory DeliveryOrder.fromJson(Map<String, dynamic> json) =>
      _$DeliveryOrderFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryOrderToJson(this);
}
