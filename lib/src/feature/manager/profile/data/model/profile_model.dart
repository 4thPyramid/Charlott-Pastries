import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final int id;
  @JsonKey(name:"first_name")
    final String firstName;
    @JsonKey(name: "last_name")
  final String lastName;
  final String phone;
  final String email;
  final String? image;
  //final DateTime createdAt;
  // final DateTime updatedAt;

  ProfileModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    this.image,
    // required this.createdAt,
    // required this.updatedAt,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
