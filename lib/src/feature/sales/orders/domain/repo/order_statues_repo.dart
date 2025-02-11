import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orders/data/datasource/sales_order_statues_remote_data_source.dart';
import 'package:charlot/src/feature/sales/orders/data/models/orders_statues_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class SalesOrderStatusRepo {
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getNewOrder();
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getWaitingOrder();
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getCompletedOrder();
}

class SalesOrderStatusRepoImpl implements SalesOrderStatusRepo {
  final SalesOrderStatusRemoteDataSource remoteDataSource;
  SalesOrderStatusRepoImpl(this.remoteDataSource);
  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getNewOrder() async {
    return await remoteDataSource.getNewOrder();
  }

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>>
      getWaitingOrder() async {
    return await remoteDataSource.getWaitingOrder();
  }

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>>
      getCompletedOrder() async {
    return await remoteDataSource.getCompletedOrder();
  }
}
