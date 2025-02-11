import 'dart:io';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_order_request_model.g.dart';

@JsonSerializable()
class AddOrderRequestModel {
  @JsonKey(fromJson: _filesFromJson, toJson: _filesToJson)
  final List<File> files;

  @JsonKey(name: 'order_type')
  final String? orderType;

  @JsonKey(name: 'order_details')
  final String orderDetails;

  final int quantity;

  @JsonKey(name: 'delivery_date')
  final String deliveryDate;

  @JsonKey(name: 'delivery_time')
  final String deliveryTime;

  @JsonKey(name: 'flower_id')
  final String flowerId;

  @JsonKey(name: 'flower_quantity')
  final int flowerQuantity;

  AddOrderRequestModel({
    required this.files,
    this.orderType,
    required this.orderDetails,
    required this.quantity,
    required this.deliveryDate,
    required this.deliveryTime,
    required this.flowerId,
    required this.flowerQuantity,
  });

  factory AddOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderRequestModelToJson(this);

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      "files": await Future.wait(
        files.map((file) async => await MultipartFile.fromFile(file.path)),
      ),
      "order_type": orderType ?? '',
      "order_details": orderDetails,
      "quantity": quantity.toString(),
      "delivery_date": deliveryDate,
      "delivery_time": deliveryTime,
      "flower_id": flowerId.toString(),
      "flower_quantity": flowerQuantity.toString(),
    });
  }

  static List<File> _filesFromJson(List<dynamic> json) =>
      json.map((path) => File(path as String)).toList();

  static List<String> _filesToJson(List<File> files) =>
      files.map((file) => file.path).toList();
}
