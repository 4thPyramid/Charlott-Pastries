// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderRequestModel _$AddOrderRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderRequestModel(
      images: AddOrderRequestModel._filesFromJson(json['images'] as List),
      isSameDay: json['is_sameday'] as bool,
      orderType: json['order_type'] as String,
      orderDetails: json['order_details'] as String,
      quantity: (json['quantity'] as num).toInt(),
      deliveryDate: json['delivery_date'] as String,
      description: json['description'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
    );

Map<String, dynamic> _$AddOrderRequestModelToJson(
        AddOrderRequestModel instance) =>
    <String, dynamic>{
      'images': AddOrderRequestModel._filesToJson(instance.images),
      'is_sameday': instance.isSameDay,
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'quantity': instance.quantity,
      'delivery_date': instance.deliveryDate,
      'description': instance.description,
      'from': instance.from,
      'to': instance.to,
    };
