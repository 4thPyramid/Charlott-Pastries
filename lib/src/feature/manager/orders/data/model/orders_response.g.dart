// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) =>
    OrdersResponse(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdersResponseToJson(OrdersResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: (json['id'] as num).toInt(),
      customerName: json['customer_name'] as String,
      orderType: json['order_type'] as String,
      status: json['status'] as String,
      deliveryDate: json['delivery_date'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'order_type': instance.orderType,
      'status': instance.status,
      'delivery_date': instance.deliveryDate,
      'image': instance.image,
    };
