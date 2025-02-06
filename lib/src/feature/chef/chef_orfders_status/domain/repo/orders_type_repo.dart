import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/datasource/orders_type_remote_data_source.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/models/orders_type_model.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersTypeRepo {
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getNewOrders();
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getCompletedOrders();
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getAcceptedOrders();
  Future<Either<ErrorModel,List<OrdersTypeModel>>> getPendingOrders();
}

class OrdersTypeRepoImp implements OrdersTypeRepo {
  final OrdersTypeRemoteDataSource ordersTypeRemoteDataSource;

  OrdersTypeRepoImp(this.ordersTypeRemoteDataSource);

  @override
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getNewOrders() {
    return ordersTypeRemoteDataSource.getNewOrders();
  }
  
  @override
  Future<Either<ErrorModel,List<OrdersTypeModel>>> getAcceptedOrders() {
       return ordersTypeRemoteDataSource.getAccepteddOrders();

  }
  
  @override
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getCompletedOrders() {
       return ordersTypeRemoteDataSource.getCompletedOrders();

  }
  
  @override
  Future<Either<ErrorModel, List<OrdersTypeModel>>> getPendingOrders() {
       return ordersTypeRemoteDataSource.getPendingOrders();

  }
}
