import 'package:json_annotation/json_annotation.dart';

part 'add_order_price_model.g.dart';

@JsonSerializable()
class AddOrderPriceModel {
  final String? message;

  @JsonKey(name: 'updated_data')
  final UpdatedData? updatedData;

  AddOrderPriceModel({
    this.message,
    this.updatedData,
  });

  factory AddOrderPriceModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderPriceModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderPriceModelToJson(this);
}

@JsonSerializable()
class UpdatedData {
  final String? price;
  final String? deposit;
  final String? remaining;

  @JsonKey(name: 'delivery_price')
  final String? deliveryPrice;

  @JsonKey(name: 'total_price')
  final String? totalPrice;

  UpdatedData({
    this.price,
    this.deposit,
    this.remaining,
    this.deliveryPrice,
    this.totalPrice,
  });

  factory UpdatedData.fromJson(Map<String, dynamic> json) =>
      _$UpdatedDataFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatedDataToJson(this);
}
