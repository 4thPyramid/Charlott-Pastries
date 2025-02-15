// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_progress_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InProgressOrderResponse _$InProgressOrderResponseFromJson(
        Map<String, dynamic> json) =>
    InProgressOrderResponse(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => InProgressOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InProgressOrderResponseToJson(
        InProgressOrderResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

InProgressOrder _$InProgressOrderFromJson(Map<String, dynamic> json) =>
    InProgressOrder(
      id: (json['id'] as num).toInt(),
      customerName: json['customer_name'] as String?,
      orderDetails: json['order_details'] as String?,
      orderType: json['order_type'] as String,
    );

Map<String, dynamic> _$InProgressOrderToJson(InProgressOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'order_details': instance.orderDetails,
      'order_type': instance.orderType,
    };
