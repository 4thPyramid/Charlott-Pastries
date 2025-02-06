// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsResponse _$OrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsResponse(
      success: json['success'] as bool,
      deliveryDate: json['delivery_date'] as String?,
      createdAt: json['created_at'] as String,
      orderDetails: json['order_details'] as String,
      orderType: json['order_type'] as String,
      chefName: json['chef_name'] as String,
      deliveryName: json['delivery_name'] as String,
      customerPhone: json['customer_phone'] as String?,
      customerName: json['customer_name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      deposit: (json['deposit'] as num?)?.toDouble(),
      remaining: (json['remaining'] as num?)?.toDouble(),
      additionalData: json['additional_data'] as String?,
      images: (json['images'] as List<dynamic>)
          .map((e) => OrderImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      quantity: (json['quantity'] as num).toInt(),
      problem: json['problem'] as String?,
      rejectionCause: json['rejection_cause'] as String?,
    );

Map<String, dynamic> _$OrderDetailsResponseToJson(
        OrderDetailsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'delivery_date': instance.deliveryDate,
      'created_at': instance.createdAt,
      'order_details': instance.orderDetails,
      'order_type': instance.orderType,
      'chef_name': instance.chefName,
      'delivery_name': instance.deliveryName,
      'customer_phone': instance.customerPhone,
      'customer_name': instance.customerName,
      'price': instance.price,
      'deposit': instance.deposit,
      'remaining': instance.remaining,
      'additional_data': instance.additionalData,
      'problem': instance.problem,
      'rejection_cause': instance.rejectionCause,
      'images': instance.images,
      'status': instance.status,
      'quantity': instance.quantity,
    };

OrderImage _$OrderImageFromJson(Map<String, dynamic> json) => OrderImage(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      image: json['image'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$OrderImageToJson(OrderImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
