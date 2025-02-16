// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderRequestModel _$AddOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderRequestModel(
      files: AddOrderRequestModel._filesFromJson(json['files'] as List),
      isSameDay: json['is_sameday'] as bool,
      orderType: json['order_type'] as String,
      orderDetails: json['order_details'] as String,
      quantity: (json['quantity'] as num).toInt(),
      deliveryDate: json['delivery_date'] as String,
      deliveryTime: json['delivery_time'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AddOrderRequestModelToJson(
        AddOrderRequestModel instance) =>
    <String, dynamic>{
      'files': AddOrderRequestModel._filesToJson(instance.files),
      'is_sameday': instance.isSameDay,
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'quantity': instance.quantity,
      'delivery_date': instance.deliveryDate,
      'delivery_time': instance.deliveryTime,
      'description': instance.description,
    };
