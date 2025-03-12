// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrderDetailsResponse _$SalesOrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    SalesOrderDetailsResponse(
      order: SalesOrder.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalesOrderDetailsResponseToJson(
        SalesOrderDetailsResponse instance) =>
    <String, dynamic>{
      'order': instance.order,
    };

SalesOrder _$SalesOrderFromJson(Map<String, dynamic> json) => SalesOrder(
      json['created_at'] as String?,
      id: (json['id'] as num).toInt(),
      orderType: json['order_type'] as String,
      orderDetails: json['order_details'] as String,
      chefName: json['chef_name'] as String?,
      deliveryName: json['delivery_name'] as String?,
      cakePrice: (json['cake_price'] as num?)?.toDouble(),
      flowerImage: json['flower image'] as String?,
      flowerId: (json['flower_id'] as num?)?.toInt(),
      flowerQuantity: (json['flower_quantity'] as num?)?.toInt(),
      image: json['image'] as String?,
      from: json['from'] as String,
      to: json['to'] as String,
      description: json['description'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      deliveryDate: json['delivery_date'] as String,
      price: (json['price'] as num?)?.toDouble(),
      flowerPrice: (json['flower_price'] as num?)?.toDouble(),
      deliveryPrice: (json['delivery_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      deposit: (json['deposit'] as num).toDouble(),
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
      managerId: (json['manager_id'] as num?)?.toInt(),
      chefId: (json['chef_id'] as num?)?.toInt(),
      deliveryId: (json['delivery_id'] as num?)?.toInt(),
      rejectionCause: json['rejection_cause'] as String?,
      images: (json['images'] as List<dynamic>)
          .map((e) => OrderImageDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SalesOrderToJson(SalesOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'flower_id': instance.flowerId,
      'flower_quantity': instance.flowerQuantity,
      'image': instance.image,
      'delivery_time': instance.deliveryTime,
      'delivery_date': instance.deliveryDate,
      'description': instance.description,
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
      'manager_id': instance.managerId,
      'chef_id': instance.chefId,
      'delivery_id': instance.deliveryId,
      'rejection_cause': instance.rejectionCause,
      'images': instance.images,
      'from': instance.from,
      'to': instance.to,
      'chef_name': instance.chefName,
      'delivery_name': instance.deliveryName,
      'cake_price': instance.cakePrice,
      'flower image': instance.flowerImage,
      'created_at': instance.createdAt,
    };
