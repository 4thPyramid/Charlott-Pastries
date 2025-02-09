// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

ChefOrderDetails _$ChefOrderDetailsFromJson(Map<String, dynamic> json) =>
    ChefOrderDetails(
      id: (json['id'] as num).toInt(),
      orderType: json['order_type'] as String?,
      orderDetails: json['order_details'] as String?,
      flowerId: (json['flower_id'] as num?)?.toInt(),
      flowerQuantity: (json['flower_quantity'] as num?)?.toInt(),
      image: json['image'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      deliveryTime: json['delivery_time'] as String?,
      deliveryDate: json['delivery_date'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      flowerPrice: (json['flower_price'] as num?)?.toDouble(),
      deliveryPrice: (json['delivery_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      deposit: (json['deposit'] as num?)?.toDouble(),
      remaining: (json['remaining'] as num?)?.toDouble(),
      customerName: json['customer_name'] as String?,
      customerPhone: json['customer_phone'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      mapDesc: json['map_desc'] as String?,
      additionalData: json['additional_data'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      isReturned: (json['is_returned'] as num?)?.toInt(),
      problem: json['problem'] as String?,
      status: json['status'] as String,
      paymentMethod: json['payment_method'] as String?,
      saleId: (json['sale_id'] as num?)?.toInt(),
      managerId: (json['manager_id'] as num?)?.toInt(),
      chefId: (json['chef_id'] as num?)?.toInt(),
      deliveryId: (json['delivery_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      rejectionCause: json['rejection_cause'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => OrderImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChefOrderDetailsToJson(ChefOrderDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'flower_id': instance.flowerId,
      'flower_quantity': instance.flowerQuantity,
      'image': instance.image,
      'quantity': instance.quantity,
      'delivery_time': instance.deliveryTime,
      'delivery_date': instance.deliveryDate,
      'price': instance.price,
      'flower_price': instance.flowerPrice,
      'delivery_price': instance.deliveryPrice,
      'total_price': instance.totalPrice,
      'deposit': instance.deposit,
      'remaining': instance.remaining,
      'customer_name': instance.customerName,
      'customer_phone': instance.customerPhone,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'map_desc': instance.mapDesc,
      'additional_data': instance.additionalData,
      'product_id': instance.productId,
      'is_returned': instance.isReturned,
      'problem': instance.problem,
      'status': instance.status,
      'payment_method': instance.paymentMethod,
      'sale_id': instance.saleId,
      'manager_id': instance.managerId,
      'chef_id': instance.chefId,
      'delivery_id': instance.deliveryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'rejection_cause': instance.rejectionCause,
      'images': instance.images,
    };
