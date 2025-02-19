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
      deliveryId: (json['delivery_id'] as num?)?.toInt(),
      customerName: json['customer_name'] as String?,
      orderType: json['order_type'] as String,
      status: json['status'] as String,
      deliveryDate: json['delivery_date'] as String?,
      images: (json['images'] as List<dynamic>)
          .map((e) => OrderImageDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'delivery_id': instance.deliveryId,
      'customer_name': instance.customerName,
      'order_type': instance.orderType,
      'status': instance.status,
      'delivery_date': instance.deliveryDate,
      'images': instance.images,
    };
