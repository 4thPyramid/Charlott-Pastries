// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsResponse _$OrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsResponse(
      (json['delivery_price'] as num?)?.toDouble(),
      success: json['success'] as bool,
      deliveryDate: json['delivery_date'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      createdAt: json['created_at'] as String,
      orderDetails: json['order_details'] as String?,
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
          .map((e) => OrderImageDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      problem: json['problem'] as String?,
      rejectionCause: json['rejection_cause'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      description: json['description'] as String,
      flowerImage: json['flower image'] as String?,
      cakePrice: (json['cake_price'] as num?)?.toDouble(),
      flowerPrice: (json['flower_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      mapDesc: json['map_desc'] as String?,
      branch: json['branch'] == null
          ? null
          : Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailsResponseToJson(
        OrderDetailsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'delivery_date': instance.deliveryDate,
      'from': instance.from,
      'to': instance.to,
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
      'delivery_time': instance.deliveryTime,
      'description': instance.description,
      'flower image': instance.flowerImage,
      'cake_price': instance.cakePrice,
      'flower_price': instance.flowerPrice,
      'delivery_price': instance.deliveryPrice,
      'total_price': instance.totalPrice,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'map_desc': instance.mapDesc,
      'branch': instance.branch,
    };

OrderImageDetails _$OrderImageDetailsFromJson(Map<String, dynamic> json) =>
    OrderImageDetails(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      image: json['image'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$OrderImageDetailsToJson(OrderImageDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      longitude: json['long'] as String,
      latitude: json['lat'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'long': instance.longitude,
      'lat': instance.latitude,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
