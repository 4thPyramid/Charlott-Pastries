// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatsResponse _$StatsResponseFromJson(Map<String, dynamic> json) =>
    StatsResponse(
      prepared: (json['prepared'] as num).toInt(),
      rejected: (json['rejected'] as num).toInt(),
      delivered: (json['delivered'] as num).toInt(),
      returned: (json['returned'] as num).toInt(),
      recive: (json['recive'] as num).toInt(),
      notAssigned: (json['not_assigned'] as num).toInt(),
      percentageString: json['percentage'] as String,
      assignedOrders: (json['assigned_orders'] as num).toInt(),
    );

Map<String, dynamic> _$StatsResponseToJson(StatsResponse instance) =>
    <String, dynamic>{
      'prepared': instance.prepared,
      'rejected': instance.rejected,
      'delivered': instance.delivered,
      'returned': instance.returned,
      'recive': instance.recive,
      'not_assigned': instance.notAssigned,
      'percentage': instance.percentageString,
      'assigned_orders': instance.assignedOrders,
    };
