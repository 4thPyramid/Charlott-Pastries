// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_ready_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreReadyOrdersModel _$StoreReadyOrdersModelFromJson(
        Map<String, dynamic> json) =>
    StoreReadyOrdersModel(
      message: json['message'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StoreReadyOrdersModelToJson(
        StoreReadyOrdersModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'id': instance.id,
    };
