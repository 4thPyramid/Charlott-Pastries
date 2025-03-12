// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManagerSearchModel _$ManagerSearchModelFromJson(Map<String, dynamic> json) =>
    ManagerSearchModel(
      id: (json['id'] as num).toInt(),
      orderType: json['order_type'] as String,
      status: json['status'] as String,
      deliveryDate: json['delivery_date'] as String?,
      customerName: json['customer_name'] as String?,
    );

Map<String, dynamic> _$ManagerSearchModelToJson(ManagerSearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_type': instance.orderType,
      'status': instance.status,
      'delivery_date': instance.deliveryDate,
      'customer_name': instance.customerName,
    };
