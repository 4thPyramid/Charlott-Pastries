import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orders/data/datasource/sales_order_statues_api_service.dart';
import 'package:charlot/src/feature/sales/orders/data/models/orders_statues_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class SalesOrderStatusRemoteDataSource {
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getNewOrder();
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getWaitingOrder();
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getCompletedOrder();
}

class SalesOrderStatusRemoteDataSourceImpl
    implements SalesOrderStatusRemoteDataSource {
  final SalesOrderStatusApiService apiService;
  SalesOrderStatusRemoteDataSourceImpl(this.apiService);

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>>
      getCompletedOrder() async {
    return await apiService.getCompletedOrder();
  }

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getNewOrder() async {
    return await apiService.getNewOrder();
  }

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>>
      getWaitingOrder() async {
    return await apiService.getWaitingOrder();
  }
}
