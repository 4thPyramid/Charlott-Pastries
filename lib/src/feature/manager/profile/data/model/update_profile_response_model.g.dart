// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileResponse _$UpdateProfileResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileResponse(
      message: json['message'] as String,
      update: UpdateProfile.fromJson(json['update'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProfileResponseToJson(
        UpdateProfileResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'update': instance.update,
    };

UpdateProfile _$UpdateProfileFromJson(Map<String, dynamic> json) =>
    UpdateProfile(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String,
      branchId: (json['branch_id'] as num).toInt(),
      status: json['status'] as String,
      verificationCode: json['verification_code'] as String?,
      verifiedAt: json['verified_at'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$UpdateProfileToJson(UpdateProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'branch_id': instance.branchId,
      'status': instance.status,
      'verification_code': instance.verificationCode,
      'verified_at': instance.verifiedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
