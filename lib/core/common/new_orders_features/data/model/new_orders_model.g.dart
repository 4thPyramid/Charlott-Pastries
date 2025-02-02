// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewOrderModel _$NewOrderModelFromJson(Map<String, dynamic> json) =>
    NewOrderModel(
      id: (json['id'] as num).toInt(),
      orderType: json['orderType'] as String,
      orderDetails: json['orderDetails'] as String,
      deliveryDate: json['deliveryDate'] as String,
    );

Map<String, dynamic> _$NewOrderModelToJson(NewOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderType': instance.orderType,
      'orderDetails': instance.orderDetails,
      'deliveryDate': instance.deliveryDate,
    };
