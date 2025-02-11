import 'package:json_annotation/json_annotation.dart';

part 'order_details_response.g.dart';

@JsonSerializable()
class OrderDetailsResponse {
  final bool success;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'order_details')
  final String? orderDetails;
  @JsonKey(name: 'order_type')
  final String orderType;
  @JsonKey(name: 'chef_name')
  final String chefName;
  @JsonKey(name: 'delivery_name')
  final String deliveryName;
  @JsonKey(name: 'customer_phone')
  final String? customerPhone;
  @JsonKey(name: 'customer_name')
  final String? customerName;
  final double? price;
  final double? deposit;
  final double? remaining;
  @JsonKey(name: 'additional_data')
  final String? additionalData;
  final String? problem;
  @JsonKey(name: 'rejection_cause')
  final String? rejectionCause;
  final List<OrderImage> images;
  final String status;
  final int quantity;

  OrderDetailsResponse({
    required this.success,
    this.deliveryDate,
    required this.createdAt,
     this.orderDetails,
    required this.orderType,
    required this.chefName,
    required this.deliveryName,
    this.customerPhone,
    this.customerName,
    this.price,
    this.deposit,
    this.remaining,
    this.additionalData,
    required this.images,
    required this.status,
    required this.quantity,
    this.problem,
    this.rejectionCause,
  });

  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseFromJson(json);
  
  Map<String, dynamic> toJson() => _$OrderDetailsResponseToJson(this);
}

@JsonSerializable()
class OrderImage {
  final int id;
  @JsonKey(name: 'order_id')
  final int orderId;
  final String image;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  OrderImage({
    required this.id,
    required this.orderId,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderImage.fromJson(Map<String, dynamic> json) =>
      _$OrderImageFromJson(json);
  
  Map<String, dynamic> toJson() => _$OrderImageToJson(this);
}