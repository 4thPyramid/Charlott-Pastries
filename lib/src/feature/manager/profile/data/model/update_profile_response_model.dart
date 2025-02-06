import 'package:json_annotation/json_annotation.dart';

part 'update_profile_response_model.g.dart';


@JsonSerializable()
class UpdateProfileResponse {
  final String message;
  final UpdateProfile update;

  UpdateProfileResponse({
    required this.message,
    required this.update,
  });

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileResponseToJson(this);
}

@JsonSerializable()
class UpdateProfile {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String email;
  final String phone;
  final String image;
  @JsonKey(name: 'branch_id')
  final int branchId;
  final String status;
  @JsonKey(name: 'verification_code')
  final String? verificationCode;
  @JsonKey(name: 'verified_at')
  final String verifiedAt;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  UpdateProfile({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.image,
    required this.branchId,
    required this.status,
    this.verificationCode,
    required this.verifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UpdateProfile.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileToJson(this);
}
