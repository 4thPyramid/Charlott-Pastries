import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/datasource/orders_type_api_sevcies.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/models/orders_type_model.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersTypeRemoteDataSource {
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getNewOrders();
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getCompletedOrders();
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getAccepteddOrders();
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getPendingOrders();
}

class OrdersTypeRemoteDataSourceImp implements OrdersTypeRemoteDataSource {
  final OrdersTypeApiSevcies ordersTypeApiSevcies;

  OrdersTypeRemoteDataSourceImp(this.ordersTypeApiSevcies);

  @override
  Future<Either<ErrorModel,List<OrdersTypeModel>>> getNewOrders() {
    return ordersTypeApiSevcies.getNewOrders();
  }
  
  @override
  Future<Either<ErrorModel,List<OrdersTypeModel>>> getAccepteddOrders() {
    return ordersTypeApiSevcies.getAccepteddOrders();
  }
  
  @override
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getCompletedOrders() {
    return ordersTypeApiSevcies.getCompletedOrders();
  }
  
  @override
  Future<Either<ErrorModel,List<OrdersTypeModel>>> getPendingOrders() {
   return ordersTypeApiSevcies.getPendingOrders();
  }
  
}
