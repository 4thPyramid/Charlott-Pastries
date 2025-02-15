// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refused_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefusedOrderResponse _$RefusedOrderResponseFromJson(
        Map<String, dynamic> json) =>
    RefusedOrderResponse(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => RefusedOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RefusedOrderResponseToJson(
        RefusedOrderResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

RefusedOrder _$RefusedOrderFromJson(Map<String, dynamic> json) => RefusedOrder(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      orderType: json['order_type'] as String,
    //  updatedAt: json['updated_at'] as String,
      timeDifference: json['time_difference'] as String,
    );

Map<String, dynamic> _$RefusedOrderToJson(RefusedOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_type': instance.orderType,
      'status': instance.status,
     // 'updated_at': instance.updatedAt,
      'time_difference': instance.timeDifference,
    };
