// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_price_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPriceRequestModel _$AddPriceRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddPriceRequestModel(
      flowerPrice: json['flower_price'] as String? ,
      cakePrice: json['cake_price'] as String,
      deposit: json['deposit'] as String,
      deliveryPrice: json['delivery_price'] as String,
    );

Map<String, dynamic> _$AddPriceRequestModelToJson(
        AddPriceRequestModel instance) =>
    <String, dynamic>{
      'cake_price': instance.cakePrice,
      'flower_price': instance.flowerPrice,
      'deposit': instance.deposit,
      'delivery_price': instance.deliveryPrice,
    };
