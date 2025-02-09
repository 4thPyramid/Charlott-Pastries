import 'package:json_annotation/json_annotation.dart';

part 'add_customer_request_model.g.dart';

@JsonSerializable()
class AddCustomerRequestModel {
  @JsonKey(name: 'customer_name')
  final String customerName;

  @JsonKey(name: 'customer_phone')
  final String customerPhone;

  final String longitude;
  final String latitude;

  @JsonKey(name: 'map_desc')
  final String mapDesc;

  @JsonKey(name: 'additional_data')
  final String additionalData;

  AddCustomerRequestModel({
    required this.customerName,
    required this.customerPhone,
    required this.longitude,
    required this.latitude,
    required this.mapDesc,
    required this.additionalData,
  });

  factory AddCustomerRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddCustomerRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddCustomerRequestModelToJson(this);
}
