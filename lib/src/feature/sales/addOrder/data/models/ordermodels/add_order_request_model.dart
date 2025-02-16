import 'dart:io';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_order_request_model.g.dart';

@JsonSerializable()
class AddOrderRequestModel {
  @JsonKey(fromJson: _filesFromJson, toJson: _filesToJson)
  final List<File> files;

  @JsonKey(name: 'is_sameday')
  final bool isSameDay;

  @JsonKey(name: 'order_type')
  final String orderType;

  @JsonKey(name: 'order_details')
  final String orderDetails;

  final int quantity;

  @JsonKey(name: 'delivery_date')
  final String deliveryDate;

  @JsonKey(name: 'delivery_time')
  final String deliveryTime;

  @JsonKey(name: 'description')
  final String description;

  AddOrderRequestModel({
    required this.files,
    required this.isSameDay,
    required this.orderType,
    required this.orderDetails,
    required this.quantity,
    required this.deliveryDate,
    required this.deliveryTime,
    required this.description,
  });

  factory AddOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderRequestModelToJson(this);

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      "files": await Future.wait(
        files.map((file) async => await MultipartFile.fromFile(file.path)),
      ),
      "is_sameday": isSameDay ? '1' : '0',
      "order_type": orderType,
      "order_details": orderDetails,
      "quantity": quantity.toString(),
      "delivery_date": deliveryDate,
      "delivery_time": deliveryTime,
      "description": description,
    });
  }

  static List<File> _filesFromJson(List<dynamic> json) =>
      json.map((path) => File(path as String)).toList();

  static List<String> _filesToJson(List<File> files) =>
      files.map((file) => file.path).toList();
}
