import 'package:json_annotation/json_annotation.dart';
import '../../../../orderDetails/data/model/order_details_response.dart';

part 'chef_order_details.g.dart';

@JsonSerializable()
class ChefOrderDetails {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'order_type')
  final String? orderType;

  @JsonKey(name: 'order_details')
  final String? orderDetails;

  @JsonKey(name: 'description') // Added
  final String? description;

  @JsonKey(name: 'is_sameday') // Added
  final int? isSameDay;

  @JsonKey(name: 'flower_id')
  final int? flowerId;

  @JsonKey(name: 'flower_quantity')
  final int? flowerQuantity;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'quantity')
  final int? quantity;

  @JsonKey(name: 'delivery_time')
  final String? deliveryTime;

  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;

  @JsonKey(name: 'cake_price') // Corrected from 'price'
  final double? cakePrice;

  @JsonKey(name: 'flower_price')
  final double? flowerPrice;

  @JsonKey(name: 'delivery_price')
  final double? deliveryPrice;

  @JsonKey(name: 'total_price')
  final double? totalPrice;

  @JsonKey(name: 'deposit')
  final double? deposit;

  @JsonKey(name: 'remaining')
  final double? remaining;

  @JsonKey(name: 'customer_name')
  final String? customerName;

  @JsonKey(name: 'customer_phone')
  final String? customerPhone;

  @JsonKey(name: 'longitude')
  final String? longitude;

  @JsonKey(name: 'latitude')
  final String? latitude;

  @JsonKey(name: 'map_desc')
  final String? mapDesc;

  @JsonKey(name: 'additional_data')
  final String? additionalData;

  @JsonKey(name: 'product_id')
  final int? productId;

  @JsonKey(name: 'is_returned')
  final int? isReturned;

  @JsonKey(name: 'problem')
  final String? problem;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'payment_method')
  final String? paymentMethod;

  @JsonKey(name: 'sale_id')
  final int? saleId;

  @JsonKey(name: 'manager_id')
  final int? managerId;

  @JsonKey(name: 'chef_id')
  final int? chefId;

  @JsonKey(name: 'delivery_id')
  final int? deliveryId;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'rejection_cause')
  final String? rejectionCause;

  @JsonKey(name: 'images')
  final List<OrderImageDetails> images;

  ChefOrderDetails({
    required this.id,
    this.orderType,
    this.orderDetails,
    this.description, 
    this.isSameDay, 
    this.flowerId,
    this.flowerQuantity,
    this.image,
    this.quantity,
    this.deliveryTime,
    this.deliveryDate,
    this.cakePrice, 
    this.flowerPrice,
    this.deliveryPrice,
    this.totalPrice,
    this.deposit,
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
    this.paymentMethod,
    this.saleId,
    this.managerId,
    this.chefId,
    this.deliveryId,
    this.createdAt,
    this.updatedAt,
    this.rejectionCause,
    required this.images,
  });

  factory ChefOrderDetails.fromJson(Map<String, dynamic> json) =>
      _$ChefOrderDetailsFromJson(json);
      
  Map<String, dynamic> toJson() => _$ChefOrderDetailsToJson(this);
}