import 'package:json_annotation/json_annotation.dart';

part 'order_status_counts.g.dart';

@JsonSerializable()
class OrderStatusCountsModel {
  @JsonKey(name: 'new orders')
  final int newOrder;

  @JsonKey(name: 'inprogress orders')
  final int orderInProgress;

  @JsonKey(name: 'completed orders')
  final int completedOrder;

  OrderStatusCountsModel({
    required this.newOrder,
    required this.orderInProgress,
    required this.completedOrder,
  });

  factory OrderStatusCountsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusCountsModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderStatusCountsModelToJson(this);
}
