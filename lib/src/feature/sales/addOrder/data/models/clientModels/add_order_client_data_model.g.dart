// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_client_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrderClientDataModel _$AddOrderClientDataModelFromJson(
        Map<String, dynamic> json) =>
    AddOrderClientDataModel(
      message: json['message'] as String? ?? '',
      updatedData: UpdatedDataAddress.fromJson(
          json['updated_data'] as Map<String, dynamic>? ?? <String, dynamic>{}),
    );

Map<String, dynamic> _$AddOrderClientDataModelToJson(
        AddOrderClientDataModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'updated_data': instance.updatedData,
    };

UpdatedDataAddress _$UpdatedDataAddressFromJson(Map<String, dynamic> json) =>
    UpdatedDataAddress(
      customerName: json['customer_name'] as String? ?? '',
      customerPhone: json['customer_phone'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      latitude: json['latitude'] as String? ?? '',
      mapDesc: json['map_desc'] as String? ?? '',
      additionalData: json['additional_data'] as String? ?? '',
    );

Map<String, dynamic> _$UpdatedDataAddressToJson(UpdatedDataAddress instance) =>
    <String, dynamic>{
      'customer_name': instance.customerName,
      'customer_phone': instance.customerPhone,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'map_desc': instance.mapDesc,
      'additional_data': instance.additionalData,
    };
