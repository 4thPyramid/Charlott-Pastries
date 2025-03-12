// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      id: (json['id'] as num ? ?? 0).toInt(),
      deliveryId: (json['delivery_id'] as num ? ?? 0).toInt(),
      long: (json['long'] as num ? ?? 0).toDouble(),
      lat: (json['lat'] as num? ?? 0).toDouble(),
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'delivery_id': instance.deliveryId,
      'long': instance.long,
      'lat': instance.lat,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
