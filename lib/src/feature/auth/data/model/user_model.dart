import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String email;
  final String phone;
  final String image;
  final String status;
  @JsonKey(name: 'verification_code')
  
  final String? verificationCode;
  @JsonKey(name: 'verified_at')

  final String verifiedAt;
  @JsonKey(name: 'created_at')

  final String createdAt;
  @JsonKey(name: 'updated_at')

  final String updatedAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.image,
    required this.status,
    this.verificationCode,
    required this.verifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}