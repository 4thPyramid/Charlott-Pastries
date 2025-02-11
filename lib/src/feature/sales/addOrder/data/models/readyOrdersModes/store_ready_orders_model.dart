import 'package:json_annotation/json_annotation.dart';

part 'store_ready_orders_model.g.dart';

@JsonSerializable()
class StoreReadyOrdersModel {
  @JsonKey(defaultValue: '')
  final String message;

  @JsonKey(defaultValue: 0)
  final int id;

  StoreReadyOrdersModel({
    required this.message,
    required this.id,
  });

  factory StoreReadyOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$StoreReadyOrdersModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoreReadyOrdersModelToJson(this);
}
