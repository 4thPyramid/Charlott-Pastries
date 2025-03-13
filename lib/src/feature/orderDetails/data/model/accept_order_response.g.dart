// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptOrderResponse _$AcceptOrderResponseFromJson(Map<String, dynamic> json) =>
    AcceptOrderResponse(
      message: json['message'] as String,
      orderId: (json['order_id'] as num? ?? 0).toInt(),
      managerId: (json['manager_id'] as num? ?? 0).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$AcceptOrderResponseToJson(
        AcceptOrderResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'order_id': instance.orderId,
      'manager_id': instance.managerId,
      'status': instance.status,
    };
