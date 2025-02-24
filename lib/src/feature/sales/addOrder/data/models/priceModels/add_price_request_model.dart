import 'package:json_annotation/json_annotation.dart';

part 'add_price_request_model.g.dart';

@JsonSerializable()
class AddPriceRequestModel {
  @JsonKey(name: 'cake_price')
  final String cakePrice;

  @JsonKey(name: 'flower_price')
  String? flowerPrice;

  final String deposit;

  @JsonKey(name: 'delivery_price')
  final String deliveryPrice;

  AddPriceRequestModel({
    this.flowerPrice,
    required this.cakePrice,
    required this.deposit,
    required this.deliveryPrice,
  });

  factory AddPriceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddPriceRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddPriceRequestModelToJson(this);
}
