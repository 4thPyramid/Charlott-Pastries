// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusCountsModel _$OrderStatusCountsModelFromJson(
        Map<String, dynamic> json) =>
    OrderStatusCountsModel(
      newOrder: (json['طلب جديد'] as num).toInt(),
      orderInProgress: (json['طلب قيد التنفيذ'] as num).toInt(),
      completedOrder: (json['طلب مكتمل'] as num).toInt(),
    );

Map<String, dynamic> _$OrderStatusCountsModelToJson(
        OrderStatusCountsModel instance) =>
    <String, dynamic>{
      'طلب جديد': instance.newOrder,
      'طلب قيد التنفيذ': instance.orderInProgress,
      'طلب مكتمل': instance.completedOrder,
    };
