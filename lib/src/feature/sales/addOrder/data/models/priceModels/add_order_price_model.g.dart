// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderPriceModel _$AddOrderPriceModelFromJson(Map<String, dynamic> json) =>
    AddOrderPriceModel(
      message: json['message'] as String?,
      updatedData: json['updated_data'] == null
          ? null
          : UpdatedData.fromJson(json['updated_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddOrderPriceModelToJson(AddOrderPriceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'updated_data': instance.updatedData,
    };

UpdatedData _$UpdatedDataFromJson(Map<String, dynamic> json) => UpdatedData(
      price: json['price'] as String?,
      deposit: json['deposit'] as String?,
      remaining: json['remaining'] as String?,
      deliveryPrice: json['delivery_price'] as String?,
      totalPrice: json['total_price'] as String?,
    );

Map<String, dynamic> _$UpdatedDataToJson(UpdatedData instance) =>
    <String, dynamic>{
      'price': instance.price,
      'deposit': instance.deposit,
      'remaining': instance.remaining,
      'delivery_price': instance.deliveryPrice,
      'total_price': instance.totalPrice,
    };
