import 'package:json_annotation/json_annotation.dart';

part 'add_order_client_data_model.g.dart';

@JsonSerializable()
class AddOrderClientDataModel {
  final String message;

  @JsonKey(name: 'updated_data')
  final UpdatedDataAddress updatedData;

  AddOrderClientDataModel({
    required this.message,
    required this.updatedData,
  });

  factory AddOrderClientDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderClientDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderClientDataModelToJson(this);
}

@JsonSerializable()
class UpdatedDataAddress {
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

  UpdatedDataAddress({
    required this.customerName,
    required this.customerPhone,
    required this.longitude,
    required this.latitude,
    required this.mapDesc,
    required this.additionalData,
  });

  /// إنشاء كائن من JSON
  factory UpdatedDataAddress.fromJson(Map<String, dynamic> json) =>
      _$UpdatedDataAddressFromJson(json);

  /// تحويل الكائن إلى JSON
  Map<String, dynamic> toJson() => _$UpdatedDataAddressToJson(this);
}
