import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/updataOrder/data/datasource/update_order_api_service.dart';
import 'package:dartz/dartz.dart';

abstract class UpdateOrderRemoteDataSource {
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields);
}

class UpdateOrderRemoteDataSourceImpl implements UpdateOrderRemoteDataSource {
  final UpdateOrderApiService apiService;
  UpdateOrderRemoteDataSourceImpl(this.apiService);

  @override
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields) async {
    return await apiService.updateOrder(orderId, updatedFields);
  }
}
