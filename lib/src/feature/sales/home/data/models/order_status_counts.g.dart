// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusCountsModel _$OrderStatusCountsModelFromJson(
        Map<String, dynamic> json) =>
    OrderStatusCountsModel(
      newOrder: (json['new orders'] as num).toInt(),
      orderInProgress: (json['inprogress orders'] as num).toInt(),
      completedOrder: (json['completed orders'] as num).toInt(),
    );

Map<String, dynamic> _$OrderStatusCountsModelToJson(
        OrderStatusCountsModel instance) =>
    <String, dynamic>{
      'new orders': instance.newOrder,
      'inprogress orders': instance.orderInProgress,
      'completed orders': instance.completedOrder,
    };
