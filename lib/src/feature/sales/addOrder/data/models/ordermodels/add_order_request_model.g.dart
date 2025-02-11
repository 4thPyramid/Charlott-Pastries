// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderRequestModel _$AddOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderRequestModel(
      files: AddOrderRequestModel._filesFromJson(json['files'] as List),
      orderType: json['order_type'] as String?,
      orderDetails: json['order_details'] as String,
      quantity: (json['quantity'] as num).toInt(),
      deliveryDate: json['delivery_date'] as String,
      deliveryTime: json['delivery_time'] as String,
      flowerId: json['flower_id'] as String,
      flowerQuantity: (json['flower_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddOrderRequestModelToJson(
        AddOrderRequestModel instance) =>
    <String, dynamic>{
      'files': AddOrderRequestModel._filesToJson(instance.files),
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'quantity': instance.quantity,
      'delivery_date': instance.deliveryDate,
      'delivery_time': instance.deliveryTime,
      'flower_id': instance.flowerId,
      'flower_quantity': instance.flowerQuantity,
    };
