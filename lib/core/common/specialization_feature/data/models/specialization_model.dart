import 'package:json_annotation/json_annotation.dart';

part 'specialization_model.g.dart';

@JsonSerializable()
class SpecializationModel {
  final int id;
  final String name;

  SpecializationModel({required this.id, required this.name});

  factory SpecializationModel.fromJson(Map<String, dynamic> json) => _$SpecializationModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationModelToJson(this);
}

@JsonSerializable()
class SpecializationResponse {
  final List<SpecializationModel> specializations;

  SpecializationResponse({required this.specializations});

  factory SpecializationResponse.fromJson(Map<String, dynamic> json) => _$SpecializationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationResponseToJson(this);
}
