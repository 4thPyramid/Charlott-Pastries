// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrderDetailsResponse _$SalesOrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    SalesOrderDetailsResponse(
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalesOrderDetailsResponseToJson(
        SalesOrderDetailsResponse instance) =>
    <String, dynamic>{
      'order': instance.order,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: (json['id'] as num).toInt(),
      orderType: json['order_type'] as String,
      orderDetails: json['order_details'] as String? ?? '',
      flowerId: (json['flower_id'] as num?)?.toInt(),
      flowerQuantity: (json['flower_quantity'] as num?)?.toInt(),
      image: json['image'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      deliveryTime: json['delivery_time'] as String,
      deliveryDate: json['delivery_date'] as String,
      price: (json['price'] as num? ?? 0).toDouble(),
      flowerPrice: (json['flower_price'] as num? ?? 0).toDouble(),
      deliveryPrice: (json['delivery_price'] as num? ?? 0).toDouble(),
      totalPrice: (json['total_price'] as num? ?? 0).toDouble(),
      deposit: (json['deposit'] as num? ?? 0).toDouble(),
      remaining: (json['remaining'] as num? ?? 0).toDouble(),
      customerName: json['customer_name'] as String? ?? '',
      customerPhone: json['customer_phone'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      latitude: json['latitude'] as String? ?? '',
      mapDesc: json['map_desc'] as String? ?? '',
      additionalData: json['additional_data'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      isReturned: (json['is_returned'] as num? ?? 0).toInt(),
      problem: json['problem'] as String?,
      status: json['status'] as String? ?? '',
      paymentMethod: json['payment_method'] as String? ?? '',
      saleId: (json['sale_id'] as num? ?? 0).toInt(),
      managerId: (json['manager_id'] as num? ?? 0).toInt(),
      chefId: (json['chef_id'] as num? ?? 0).toInt(),
      deliveryId: (json['delivery_id'] as num? ?? 0).toInt(),
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      rejectionCause: json['rejection_cause'] as String?,
      images: json['images'] as List<dynamic>? ?? [],
      flowers: json['flowers'] == null
          ? null
          : Flower.fromJson(json['flowers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
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
      'flowers': instance.flowers,
    };

Flower _$FlowerFromJson(Map<String, dynamic> json) => Flower(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      branchId: (json['branch_id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$FlowerToJson(Flower instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'branch_id': instance.branchId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
