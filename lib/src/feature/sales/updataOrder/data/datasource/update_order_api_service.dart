import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class UpdateOrderApiService {
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields);
}

class UpdateOrderApiServiceImpl extends UpdateOrderApiService {
  final ApiConsumer api;
  UpdateOrderApiServiceImpl(this.api);

  @override
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields) async {
    try {
      final response = await api.post(
        "sales/update-order/$orderId",
        data: updatedFields,
      );
      return Right(response);
    } on ServerException catch (e) {
      return Left(ErrorModel(message: e.toString()));
    }
  }
}
