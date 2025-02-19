import 'package:json_annotation/json_annotation.dart';

part 'order_details_response.g.dart';

@JsonSerializable()
class OrderDetailsResponse {
  final bool success;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  @JsonKey(name: 'from')
  final String? from;
  @JsonKey(name: 'to')
  final String? to;
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
  final List<OrderImageDetails> images;
  final String status;
  @JsonKey(name: 'delivery_time')
  final String? deliveryTime;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'flower image')
  final String? flowerImage;
  @JsonKey(name: 'cake_price')
  final double? cakePrice;
  @JsonKey(name: 'flower_price')
  final double? flowerPrice;
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @JsonKey(name: "longitude")
  final String? longitude;
  @JsonKey(name: "latitude")
  final String? latitude;
  @JsonKey(name: "map_desc")
  final String? mapDesc;
  @JsonKey(name: "branch")
  final Branch? branch;

  OrderDetailsResponse({
    required this.success,
    this.deliveryDate,
    this.from,
    this.to,
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
    this.problem,
    this.rejectionCause,
    this.deliveryTime,
    required this.description,
    this.flowerImage,
    this.cakePrice,
    this.flowerPrice,
    this.totalPrice,
    this.longitude,
    this.latitude,
    this.mapDesc,
    this.branch,
  });

  factory OrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsResponseToJson(this);
}

@JsonSerializable()
class OrderImageDetails {
  final int id;
  @JsonKey(name: 'order_id')
  final int orderId;
  final String image;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  OrderImageDetails({
    required this.id,
    required this.orderId,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderImageDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderImageDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderImageDetailsToJson(this);
}

@JsonSerializable()
class Branch {
  final int id;
  final String name;
  final String phone;
  final String address;
  @JsonKey(name: "long")
  final String longitude;
  @JsonKey(name: "lat")
  final String latitude;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  Branch({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}
