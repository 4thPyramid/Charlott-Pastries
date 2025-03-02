// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponseModel _$NotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    NotificationResponseModel(
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationResponseModelToJson(
        NotificationResponseModel instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };

NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    NotificationItem(
      data: NotificationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationItemToJson(NotificationItem instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) =>
    NotificationData(
      title: json['title'] as String,
      body: json['body'] as String,
      orderId: json['order_id'] as int?,
    );

Map<String, dynamic> _$NotificationDataToJson(NotificationData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'order_id': instance.orderId,
    };
