import 'package:json_annotation/json_annotation.dart';

part 'all_ready_product_model.g.dart';

@JsonSerializable()
class AllReadyProductModel {
  @JsonKey(defaultValue: [])
  final List<Product> products;

  AllReadyProductModel({required this.products});

  factory AllReadyProductModel.fromJson(Map<String, dynamic> json) =>
      _$AllReadyProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllReadyProductModelToJson(this);
}

@JsonSerializable()
class Product {
  @JsonKey(defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: '')
  final String name;

  @JsonKey(defaultValue: null) // ✅ السماح بـ null
  final String? image;

  Product({
    required this.id,
    required this.name,
    this.image, // ✅ لا حاجة لقيمة افتراضية هنا
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
