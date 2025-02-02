import 'package:json_annotation/json_annotation.dart';

part 'new_orders_model.g.dart';

@JsonSerializable()
class NewOrderModel {
  final int id;
  final String orderType;
  final String orderDetails;
  final String deliveryDate;

  NewOrderModel({
    required this.id,
    required this.orderType,
    required this.orderDetails,
    required this.deliveryDate,
  });

  factory NewOrderModel.fromJson(Map<String, dynamic> json) => _$NewOrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewOrderModelToJson(this);
}
