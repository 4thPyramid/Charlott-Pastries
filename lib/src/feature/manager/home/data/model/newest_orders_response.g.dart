// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newest_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewOrder _$NewOrderFromJson(Map<String, dynamic> json) => NewOrder(
      id: (json['id'] as num).toInt(),
      orderType: json['order_type'] as String,
      deliveryDate: json['delivery_date'] as String?,
      orderDetails: json['order_details'] as String?,
    );

Map<String, dynamic> _$NewOrderToJson(NewOrder instance) => <String, dynamic>{
      'id': instance.id,
      'order_type': instance.orderType,
      'delivery_date': instance.deliveryDate,
      'order_details': instance.orderDetails,
    };

NewestOrdersResponse _$NewestOrdersResponseFromJson(
        Map<String, dynamic> json) =>
    NewestOrdersResponse(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => NewOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewestOrdersResponseToJson(
        NewestOrdersResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
