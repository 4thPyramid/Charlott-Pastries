import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class UpdateOrderApiService {
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields, List<MultipartFile>? images);
}

class UpdateOrderApiServiceImpl extends UpdateOrderApiService {
  final ApiConsumer api;

  UpdateOrderApiServiceImpl(this.api);

  @override
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields, List<MultipartFile>? images) async {
    try {
      FormData formData = FormData.fromMap(updatedFields);

      if (images != null && images.isNotEmpty) {
        for (var image in images) {
          formData.files.add(MapEntry('images[]', image));
        }
      }

      final response = await api.post(
        "sales/update-order/$orderId",
        data: formData,
        headers: {
          'Content-Type': 'multipart/form-data',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${CacheHelper.getToken()}',
        },
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorModel(message: _handleDioError(e)));
    } catch (e) {
      return Left(ErrorModel(message: "Unexpected error: ${e.toString()}"));
    }
  }

  String _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout. Please try again.";
      case DioExceptionType.receiveTimeout:
        return "Server took too long to respond.";
      case DioExceptionType.badResponse:
        return "Server error: ${e.response?.statusCode}";
      case DioExceptionType.cancel:
        return "Request was cancelled.";
      default:
        return "An unexpected error occurred.";
    }
  }
}
