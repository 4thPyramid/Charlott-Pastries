// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderResponseModel _$AddOrderResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderResponseModel(
      message: json['message'] as String?,
      order: json['order'] == null
          ? null
          : OrderAdded.fromJson(json['order'] as Map<String, dynamic>),
      orderPrice: json['orderPrice'] == null
          ? null
          : AddOrderPriceModel.fromJson(
              json['orderPrice'] as Map<String, dynamic>),
      clientData: json['clientData'] == null
          ? null
          : AddOrderClientDataModel.fromJson(
              json['clientData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddOrderResponseModelToJson(
        AddOrderResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'order': instance.order,
      'clientData': instance.clientData,
      'orderPrice': instance.orderPrice,
    };

OrderAdded _$OrderAddedFromJson(Map<String, dynamic> json) => OrderAdded(
      orderType: json['order_type'] as String?,
      orderDetails: json['order_details'] as String?,
      flowerId: json['flower_id'] as String?,
      flowerQuantity: json['flower_quantity'] as String?,
      quantity: json['quantity'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      deliveryDate: json['delivery_date'] as String?,
      saleId: (json['sale_id'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      isSameday: json['is_sameday'] as String?,
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => OrderImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderAddedToJson(OrderAdded instance) =>
    <String, dynamic>{
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'flower_id': instance.flowerId,
      'flower_quantity': instance.flowerQuantity,
      'quantity': instance.quantity,
      'delivery_time': instance.deliveryTime,
      'is_sameday': instance.isSameday,
      'delivery_date': instance.deliveryDate,
      'sale_id': instance.saleId,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
      'images': instance.images,
    };

OrderImage _$OrderImageFromJson(Map<String, dynamic> json) => OrderImage(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      image: json['image'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$OrderImageToJson(OrderImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
