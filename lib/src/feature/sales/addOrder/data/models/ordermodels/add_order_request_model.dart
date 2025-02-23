import 'dart:io';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_order_request_model.g.dart';

@JsonSerializable()
class AddOrderRequestModel {
  @JsonKey(fromJson: _filesFromJson, toJson: _filesToJson)
  final List<File> images;

  @JsonKey(name: 'is_sameday')
  final bool isSameDay;

  @JsonKey(name: 'order_type')
  final String orderType;

  @JsonKey(name: 'order_details')
  final String orderDetails;

  final int quantity;

  @JsonKey(name: 'delivery_date')
  final String deliveryDate;

 @JsonKey(ignore: true)
  final File? image;
  @JsonKey(name: 'description')
  final String description;
  final String from;
  final String to;
  AddOrderRequestModel({
    required this.images,
       this.image,
    required this.isSameDay,
    required this.orderType,
    required this.orderDetails,
    required this.quantity,
    required this.deliveryDate,
    required this.description,
    required this.from,
    required this.to,
  });

  factory AddOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddOrderRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddOrderRequestModelToJson(this);
Future<FormData> toFormData() async {
    Map<String, dynamic> formData = {};

    formData['is_sameday'] = isSameDay ? '1' : '0';
    formData['order_type'] = orderType;
    formData['order_details'] = orderDetails;
    formData['quantity'] = quantity.toString();
    formData['delivery_date'] = deliveryDate;
    formData['description'] = description;
    formData['from'] = from;
    formData['to'] = to;

    if (image != null && await image!.exists()) {
      formData['image'] = await MultipartFile.fromFile(image!.path);
    }
  

    for (int i = 0; i < images.length; i++) {
      var file = images[i];
      if (await file.exists()) {
        formData['images[$i]'] = await MultipartFile.fromFile(file.path);
      } else {
        throw Exception('File does not exist: ${file.path}');
      }
    }

    print(
        "FormData files: ${formData.values.where((e) => e is MultipartFile).map((e) => (e as MultipartFile).filename).toList()}");

    return FormData.fromMap(formData);
  }

  static List<File> _filesFromJson(List<dynamic> json) =>
      json.map((path) => File(path as String)).toList();

  static List<String> _filesToJson(List<File> files) =>
      files.map((file) => file.path).toList();
}
