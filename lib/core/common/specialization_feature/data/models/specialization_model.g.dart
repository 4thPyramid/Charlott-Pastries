// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationModel _$SpecializationModelFromJson(Map<String, dynamic> json) =>
    SpecializationModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$SpecializationModelToJson(
        SpecializationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

SpecializationResponse _$SpecializationResponseFromJson(
        Map<String, dynamic> json) =>
    SpecializationResponse(
      specializations: (json['specializations'] as List<dynamic>)
          .map((e) => SpecializationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationResponseToJson(
        SpecializationResponse instance) =>
    <String, dynamic>{
      'specializations': instance.specializations,
    };
