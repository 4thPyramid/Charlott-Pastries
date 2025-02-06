// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersTypeModel _$OrdersTypeModelFromJson(Map<String, dynamic> json) =>
    OrdersTypeModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdersTypeModelToJson(OrdersTypeModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: (json['id'] as num).toInt(),
      orderType: json['orderType'] as String?,
      orderDetails: json['orderDetails'] as String?,
      deliveryDate: json['deliveryDate'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'orderType': instance.orderType,
      'orderDetails': instance.orderDetails,
      'deliveryDate': instance.deliveryDate,
      'quantity': instance.quantity,
      'updatedAt': instance.updatedAt,
    };
