// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleProductModel _$SingleProductModelFromJson(Map<String, dynamic> json) =>
    SingleProductModel(
      id: (json['id'] as num? ?? 0).toInt(),
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String?,
      branchId: (json['branch_id'] as num? ?? 0).toInt(),
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>? ?? {}),
    );

Map<String, dynamic> _$SingleProductModelToJson(SingleProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'branch_id': instance.branchId,
      'branch': instance.branch,
    };

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: (json['id'] as num? ?? 0).toInt(),
      name: json['name'] as String? ?? 'fdsf',
      address: json['address'] as String? ?? 'fdsdf',
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };
