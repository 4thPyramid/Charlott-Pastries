import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:charlot/src/feature/sales/orders/data/models/orders_statues_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class SalesOrderStatusApiService {
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getNewOrder();
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getWaitingOrder();
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getCompletedOrder();
}

class SalesOrderStatusApiServiceImpl extends SalesOrderStatusApiService {
  final ApiConsumer api;
  SalesOrderStatusApiServiceImpl(this.api);

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>>
      getCompletedOrder() async {
    try {
      final response = await api.get(
        "sales/delivered-orders",
      );
      return Right(OrdersStatuesResponseModel.fromJson(response));
    } on ServerException catch (e) {
      return Left(ErrorModel(message: e.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> getNewOrder() async {
    try {
      final response = await api.get(
        "sales/new-orders",
      );
      return Right(OrdersStatuesResponseModel.fromJson(response));
    } on ServerException catch (e) {
      return Left(ErrorModel(message: e.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, OrdersStatuesResponseModel>>
      getWaitingOrder() async {
    try {
      final response = await api.get(
        "sales/preparing-orders",
      );
      return Right(OrdersStatuesResponseModel.fromJson(response));
    } on ServerException catch (e) {
      return Left(ErrorModel(message: e.toString()));
    }
  }
}
