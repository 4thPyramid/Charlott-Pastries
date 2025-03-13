import 'package:json_annotation/json_annotation.dart';

import '../../../../orderDetails/data/model/order_details_response.dart';

part 'sales_order_details_response.g.dart';

@JsonSerializable()
class SalesOrderDetailsResponse {
  final SalesOrder order;

  SalesOrderDetailsResponse({required this.order});

  factory SalesOrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SalesOrderDetailsResponseToJson(this);
}

@JsonSerializable()
class SalesOrder {
  final int id;
  @JsonKey(name: 'order_type')
  final String orderType;
  @JsonKey(name: 'order_details')
  final String orderDetails;
  @JsonKey(name: 'flower_id')
  final int? flowerId;
  @JsonKey(name: 'flower_quantity')
  final int? flowerQuantity;
  final String? image;
  @JsonKey(name: 'delivery_time')
  final String? deliveryTime;
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  final String? description;
  final double? price;
  @JsonKey(name: 'flower_price')
  final double? flowerPrice;
  @JsonKey(name: 'delivery_price')
  final double? deliveryPrice;
  @JsonKey(name: 'total_price')
  final double? totalPrice;
  final double deposit;
  final double? remaining;
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @JsonKey(name: 'customer_phone')
  final String? customerPhone;
  final String? longitude;
  final String? latitude;
  @JsonKey(name: 'map_desc')
  final String? mapDesc;
  @JsonKey(name: 'additional_data')
  final String? additionalData;
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'is_returned')
  final int? isReturned;
  final String? problem;
  final String status;
  @JsonKey(name: 'manager_id')
  final int? managerId;
  @JsonKey(name: 'chef_id')
  final int? chefId;
  @JsonKey(name: 'delivery_id')
  final int? deliveryId;
  @JsonKey(name: 'rejection_cause')
  final String? rejectionCause;
  final List<OrderImageDetails> images;
  final String from;
  final String to;
  @JsonKey(name: "chef_name")
  final String? chefName;
  @JsonKey(name: "delivery_name")
  final String? deliveryName;
  @JsonKey(name: "cake_price")
  final double? cakePrice;
  @JsonKey(name: "flower image")
  final String? flowerImage;
  @JsonKey(name: 'created_at')
  final String? createdAt;

  SalesOrder(
    this.createdAt, {
    required this.id,
    required this.orderType,
    required this.orderDetails,
    this.chefName,
    this.deliveryName,
    this.cakePrice,
    this.flowerImage,
    this.flowerId,
    this.flowerQuantity,
    this.image,
    required this.from,
    required this.to,
    this.description,
    this.deliveryTime,
    required this.deliveryDate,
    this.price,
    this.flowerPrice,
    this.deliveryPrice,
    this.totalPrice,
    required this.deposit,
    this.remaining,
    this.customerName,
    this.customerPhone,
    this.longitude,
    this.latitude,
    this.mapDesc,
    this.additionalData,
    this.productId,
    this.isReturned,
    this.problem,
    required this.status,
    this.managerId,
    this.chefId,
    this.deliveryId,
    this.rejectionCause,
    required List<OrderImageDetails> images,
  }) : images = _mergeImages(images, flowerImage);

  /// دمج الصور داخل الموديل
  static List<OrderImageDetails> _mergeImages(
      List<OrderImageDetails> images, String? flowerImage) {
    List<OrderImageDetails> mergedImages = List.from(images);

    if (flowerImage != null && flowerImage.isNotEmpty) {
      mergedImages.add(OrderImageDetails(
        id: -1, // تعيين ID افتراضي
        orderId: -1, // تعيين Order ID افتراضي
        image: flowerImage,
        createdAt: DateTime.now().toIso8601String(),
        updatedAt: DateTime.now().toIso8601String(),
      ));
    }

    return mergedImages;
  }

  factory SalesOrder.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderFromJson(json);

  Map<String, dynamic> toJson() => _$SalesOrderToJson(this);
}
