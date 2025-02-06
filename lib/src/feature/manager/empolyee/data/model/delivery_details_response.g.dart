// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryDetails _$DeliveryDetailsFromJson(Map<String, dynamic> json) =>
    DeliveryDetails(
      delivery: Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeliveryDetailsToJson(DeliveryDetails instance) =>
    <String, dynamic>{
      'delivery': instance.delivery,
    };

Delivery _$DeliveryFromJson(Map<String, dynamic> json) => Delivery(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String?,
      deliveredOrdersCount: (json['delivered_orders_count'] as num).toInt(),
      canTakeOrder: json['canTakeOrder'] as String,
      email: json['email'] as String,
      id: (json['id'] as num).toInt(),
      orders: (json['orders'] as List<dynamic>)
          .map((e) => DeliveryOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DeliveryToJson(Delivery instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'image': instance.image,
      'email': instance.email,
      'id': instance.id,
      'delivered_orders_count': instance.deliveredOrdersCount,
      'canTakeOrder': instance.canTakeOrder,
      'orders': instance.orders,
    };

DeliveryOrder _$DeliveryOrderFromJson(Map<String, dynamic> json) =>
    DeliveryOrder(
      orderType: json['order_type'] as String,
      orderDetails: json['order_details'] as String?,
      deliveryDate: json['delivery_date'] as String,
      deliveryId: (json['delivery_id'] as num).toInt(),
    );

Map<String, dynamic> _$DeliveryOrderToJson(DeliveryOrder instance) =>
    <String, dynamic>{
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'delivery_date': instance.deliveryDate,
      'delivery_id': instance.deliveryId,
    };
