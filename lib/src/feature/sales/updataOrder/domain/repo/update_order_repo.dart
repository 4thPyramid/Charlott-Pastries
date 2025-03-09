import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/updataOrder/data/datasource/update_order_data_source.dart';
import 'package:dartz/dartz.dart';

abstract class UpdateOrderRepo {
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields);
}

class UpdateOrderRepoImpl implements UpdateOrderRepo {
  final UpdateOrderRemoteDataSource remoteDataSource;
  UpdateOrderRepoImpl(this.remoteDataSource);

  @override
  Future<Either<ErrorModel, Map<String, dynamic>>> updateOrder(
      int orderId, Map<String, dynamic> updatedFields) async {
    return await remoteDataSource.updateOrder(orderId, updatedFields);
  }
}
