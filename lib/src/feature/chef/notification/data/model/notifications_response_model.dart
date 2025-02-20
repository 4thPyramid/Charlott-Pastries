import 'package:json_annotation/json_annotation.dart';

part 'notifications_response_model.g.dart';

@JsonSerializable()
class NotificationResponseModel {
  final List<NotificationItem> notifications;

  NotificationResponseModel({required this.notifications});

  factory NotificationResponseModel.fromJson(List<dynamic> json) =>
      NotificationResponseModel(
        notifications: json.map((e) => NotificationItem.fromJson(e)).toList(),
      );

  Map<String, dynamic> toJson() => {
        'notifications': notifications.map((e) => e.toJson()).toList(),
      };
}

@JsonSerializable()
class NotificationItem {
  final NotificationData data;

  NotificationItem({required this.data});

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationItemToJson(this);
}

@JsonSerializable()
class NotificationData {
  final String title;
  final String body;

  NotificationData({required this.title, required this.body});

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationDataToJson(this);
}
