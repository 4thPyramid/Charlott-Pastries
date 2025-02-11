// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_customer_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCustomerRequestModel _$AddCustomerRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddCustomerRequestModel(
      customerName: json['customer_name'] as String,
      customerPhone: json['customer_phone'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      mapDesc: json['map_desc'] as String,
      additionalData: json['additional_data'] as String,
    );

Map<String, dynamic> _$AddCustomerRequestModelToJson(
        AddCustomerRequestModel instance) =>
    <String, dynamic>{
      'customer_name': instance.customerName,
      'customer_phone': instance.customerPhone,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'map_desc': instance.mapDesc,
      'additional_data': instance.additionalData,
    };
