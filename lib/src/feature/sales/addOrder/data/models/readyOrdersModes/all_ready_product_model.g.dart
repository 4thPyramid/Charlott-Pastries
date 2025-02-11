// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_ready_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllReadyProductModel _$AllReadyProductModelFromJson(
        Map<String, dynamic> json) =>
    AllReadyProductModel(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AllReadyProductModelToJson(
        AllReadyProductModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
