

import 'package:json_annotation/json_annotation.dart';
part 'chef_notifications_response.g.dart';

@JsonSerializable()
class ChefNotifications {
  @JsonKey(name: 'notifications')
  final List<NotificationItem> notifications;

  ChefNotifications({
    required this.notifications,
  });

  factory ChefNotifications.fromJson(Map<String, dynamic> json) => 
      _$ChefNotificationsFromJson(json);
  
  Map<String, dynamic> toJson() => _$ChefNotificationsToJson(this);
}

@JsonSerializable()
class NotificationItem {
  @JsonKey(name: 'title')
  final String title;
  
  @JsonKey(name: 'id')
  final int id;
  
  @JsonKey(name: 'order_type')
  final String orderType;
  final String? status;
  @JsonKey(name: 'order_images')
  final List<OrderImage> orderImages;
  
  @JsonKey(name: 'notification_created_at')
  final String notificationCreatedAt;

  NotificationItem({
    required this.title,
    required this.id,
    required this.orderType,
    required this.orderImages,
    this.status, 
    required this.notificationCreatedAt,
  });

  factory NotificationItem.fromJson(Map<String, dynamic> json) => 
      _$NotificationItemFromJson(json);
  
  Map<String, dynamic> toJson() => _$NotificationItemToJson(this);
}

@JsonSerializable()
class OrderImage {
  @JsonKey(name: 'id')
  final int id;
  
  @JsonKey(name: 'image')
  final String image;

  OrderImage({
    required this.id,
    required this.image,
  });

  factory OrderImage.fromJson(Map<String, dynamic> json) => 
      _$OrderImageFromJson(json);
  
  Map<String, dynamic> toJson() => _$OrderImageToJson(this);
}