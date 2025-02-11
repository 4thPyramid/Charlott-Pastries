// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesNotifications _$SalesNotificationsFromJson(Map<String, dynamic> json) =>
    SalesNotifications(
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SalesNotificationsToJson(SalesNotifications instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };

NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    NotificationItem(
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
      orderType: json['order_type'] as String,
      orderImages: (json['order_images'] as List<dynamic>)
          .map((e) => OrderImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      notificationCreatedAt: json['notification_created_at'] as String,
    );

Map<String, dynamic> _$NotificationItemToJson(NotificationItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'order_type': instance.orderType,
      'status': instance.status,
      'order_images': instance.orderImages,
      'notification_created_at': instance.notificationCreatedAt,
    };

OrderImage _$OrderImageFromJson(Map<String, dynamic> json) => OrderImage(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$OrderImageToJson(OrderImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
