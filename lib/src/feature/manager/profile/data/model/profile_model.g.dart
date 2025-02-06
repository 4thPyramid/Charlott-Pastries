// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      id: (json['id'] as num).toInt(),
      firstName: json["first_name"] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'image': instance.image,
    };
