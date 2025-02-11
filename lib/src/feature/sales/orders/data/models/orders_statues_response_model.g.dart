// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_statues_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersStatuesResponseModel _$OrdersStatuesResponseModelFromJson(
        Map<String, dynamic> json) =>
    OrdersStatuesResponseModel(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdersStatuesResponseModelToJson(
        OrdersStatuesResponseModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      id: (json['id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      flowerQuantity: (json['flower_quantity'] as num).toInt(),
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'flower_quantity': instance.flowerQuantity,
      'updated_at': instance.updatedAt,
    };
