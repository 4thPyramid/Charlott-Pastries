// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chef_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChefDetails _$ChefDetailsFromJson(Map<String, dynamic> json) => ChefDetails(
      chef: Chef.fromJson(json['chef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChefDetailsToJson(ChefDetails instance) =>
    <String, dynamic>{
      'chef': instance.chef,
    };

Chef _$ChefFromJson(Map<String, dynamic> json) => Chef(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String?,
      email: json['email'] as String,
      specialization: json['specialization'] as String,
      bio: json['bio'] as String,
      completedOrdersCount: (json['completed_orders_count'] as num).toInt(),
      canTakeOrder: json['canTakeOrder'] as String,
      orders: (json['orders'] as List<dynamic>)
          .map((e) => ChefOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChefToJson(Chef instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'image': instance.image,
      'email': instance.email,
      'specialization': instance.specialization,
      'bio': instance.bio,
      'completed_orders_count': instance.completedOrdersCount,
      'canTakeOrder': instance.canTakeOrder,
      'orders': instance.orders,
    };

ChefOrder _$ChefOrderFromJson(Map<String, dynamic> json) => ChefOrder(
      orderType: json['order_type'] as String,
      orderDetails: json['order_details'] as String?,
      deliveryDate: json['delivery_date'] as String?,
      deliveryId: (json['delivery_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChefOrderToJson(ChefOrder instance) => <String, dynamic>{
      'order_type': instance.orderType,
      'order_details': instance.orderDetails,
      'delivery_date': instance.deliveryDate,
      'delivery_id': instance.deliveryId,
    };
