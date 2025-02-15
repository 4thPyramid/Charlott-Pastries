// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_types_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderType _$OrderTypeFromJson(Map<String, dynamic> json) => OrderType(
      id: (json['id'] as num).toInt(),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$OrderTypeToJson(OrderType instance) => <String, dynamic>{
      'id': instance.id,
      'updated_at': instance.updatedAt.toIso8601String(),
    };

OrderTypeResponse _$OrderTypeResponseFromJson(Map<String, dynamic> json) =>
    OrderTypeResponse(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderTypeResponseToJson(OrderTypeResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
