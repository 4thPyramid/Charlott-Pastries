import 'package:json_annotation/json_annotation.dart';

part 'single_product_model.g.dart';

@JsonSerializable()
class SingleProductModel {
  final int id;
  final String name;
  final String image;
  final String? description;
  @JsonKey(name: 'branch_id')
  final int branchId;
  final Branch branch;

  SingleProductModel({
    required this.id,
    required this.name,
    required this.image,
    this.description,
    required this.branchId,
    required this.branch,
  });

  factory SingleProductModel.fromJson(Map<String, dynamic> json) =>
      _$SingleProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$SingleProductModelToJson(this);
}

@JsonSerializable()
class Branch {
  final int id;
  final String name;
  final String address;

  Branch({
    required this.id,
    required this.name,
    required this.address,
  });

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}
