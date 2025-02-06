import 'package:json_annotation/json_annotation.dart';

part 'chef_details_response.g.dart';


  

@JsonSerializable()
class ChefDetails {
  final Chef chef;

  ChefDetails({
    required this.chef,
  });

  factory ChefDetails.fromJson(Map<String, dynamic> json) =>
      _$ChefDetailsFromJson(json);
  
  Map<String, dynamic> toJson() => _$ChefDetailsToJson(this);
}

@JsonSerializable()
class Chef {
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String phone;
  final String? image;
  final String email;
  final String specialization;
  final String bio;
  @JsonKey(name: 'completed_orders_count')
  final int completedOrdersCount;
  @JsonKey(name: 'canTakeOrder')
  final String canTakeOrder;
  final List<ChefOrder> orders;

  Chef({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    this.image,
    required this.email,
    required this.specialization,
    required this.bio,
    required this.completedOrdersCount,
    required this.canTakeOrder,
    required this.orders,
  });

  factory Chef.fromJson(Map<String, dynamic> json) => _$ChefFromJson(json);
  Map<String, dynamic> toJson() => _$ChefToJson(this);
}

@JsonSerializable()
class ChefOrder {
  @JsonKey(name: 'order_type')
  final String orderType;
  @JsonKey(name: 'order_details')
  final String? orderDetails;
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  @JsonKey(name: 'delivery_id')
  final int? deliveryId;

  ChefOrder({
    required this.orderType,
    this.orderDetails,
    required this.deliveryDate,
    this.deliveryId,
  });

  factory ChefOrder.fromJson(Map<String, dynamic> json) =>
      _$ChefOrderFromJson(json);
  
  Map<String, dynamic> toJson() => _$ChefOrderToJson(this);
}