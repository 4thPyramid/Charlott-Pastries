// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_price_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPriceRequestModel _$AddPriceRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddPriceRequestModel(
      flowerPrice: json['flowerPrice'] as String,
      price: json['price'] as String,
      deposit: json['deposit'] as String,
      remaining: json['remaining'] as String,
      deliveryPrice: json['delivery_price'] as String,
      totalPrice: json['total_price'] as String,
    );

Map<String, dynamic> _$AddPriceRequestModelToJson(
        AddPriceRequestModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'flowerPrice': instance.flowerPrice,
      'deposit': instance.deposit,
      'remaining': instance.remaining,
      'delivery_price': instance.deliveryPrice,
      'total_price': instance.totalPrice,
    };
