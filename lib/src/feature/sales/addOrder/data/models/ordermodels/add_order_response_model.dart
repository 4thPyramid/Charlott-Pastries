import 'package:json_annotation/json_annotation.dart';

import '../clientModels/add_order_client_data_model.dart';
import '../priceModels/add_order_price_model.dart';

part 'add_order_response_model.g.dart';

@JsonSerializable()
class AddOrderResponseModel {
  final String? message;
  final OrderAdded? order;
  final AddOrderClientDataModel? clientData;
  final AddOrderPriceModel? orderPrice;

  AddOrderResponseModel({
    this.message,
    this.order,
    this.orderPrice,
    this.clientData,
  });

  factory AddOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderResponseModelToJson(this);
}

@JsonSerializable()
class OrderAdded {
  @JsonKey(name: 'order_type')
  final String? orderType;

  @JsonKey(name: 'order_details')
  String? orderDetails;

  @JsonKey(name: 'flower_id')
  String? flowerId;

  @JsonKey(name: 'flower_quantity')
  String? flowerQuantity;

  String? quantity;

  @JsonKey(name: 'delivery_time')
  final String? deliveryTime;

  @JsonKey(name: 'is_sameday')
  final String? isSameday;

  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;

  @JsonKey(name: 'sale_id')
  final int? saleId;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  final int id;

  final List<OrderImage>? images;

  OrderAdded({
    this.orderType,
    this.orderDetails,
    this.flowerId,
    this.flowerQuantity,
    this.quantity,
    this.deliveryTime,
    this.deliveryDate,
    this.saleId,
    this.updatedAt,
    this.createdAt,
    required this.isSameday,
    required this.id,
    this.images,
  });

  factory OrderAdded.fromJson(Map<String, dynamic> json) =>
      _$OrderAddedFromJson(json);

  Map<String, dynamic> toJson() => _$OrderAddedToJson(this);
}

@JsonSerializable()
class OrderImage {
  final int id;
  
  @JsonKey(name: 'order_id')
  final int? orderId;

  final String? image;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  OrderImage({
    required this.id,
    this.orderId,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderImage.fromJson(Map<String, dynamic> json) =>
      _$OrderImageFromJson(json);

  Map<String, dynamic> toJson() => _$OrderImageToJson(this);
}