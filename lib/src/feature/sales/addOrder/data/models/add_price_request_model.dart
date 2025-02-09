import 'package:json_annotation/json_annotation.dart';

part 'add_price_request_model.g.dart';

@JsonSerializable()
class AddPriceRequestModel {
  final String price;
  final String flowerPrice;
  final String deposit;
  final String remaining;
  @JsonKey(name: 'delivery_price')
  final String deliveryPrice;
  @JsonKey(name: 'total_price')
  final String totalPrice;

  AddPriceRequestModel({
    required this.flowerPrice,
    required this.price,
    required this.deposit,
    required this.remaining,
    required this.deliveryPrice,
    required this.totalPrice,
  });

  factory AddPriceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddPriceRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddPriceRequestModelToJson(this);
}
