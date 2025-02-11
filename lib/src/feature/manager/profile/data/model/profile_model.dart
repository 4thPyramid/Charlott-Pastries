import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final int? id;

  @JsonKey(name: "first_name")
  final String? firstName;

  @JsonKey(name: "last_name")
  final String? lastName;

  final String? phone;
  final String? email;
  final String? image;
  //final DateTime? createdAt;
  //final DateTime? updatedAt;

  ProfileModel({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.image,
    //this.createdAt,
    //this.updatedAt,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() {
    final map = _$ProfileModelToJson(this);
    // Remove null values from the map
    map.removeWhere((key, value) => value == null);
    return map;
  }

  // Helper method to create a copy with only modified fields
  ProfileModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? phone,
    String? email,
    String? image,
  }) {
    return ProfileModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      image: image ?? this.image,
    );
  }
}
