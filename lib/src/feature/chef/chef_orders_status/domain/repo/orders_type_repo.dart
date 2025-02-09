import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/data/datasource/orders_type_remote_data_source.dart';
import 'package:dartz/dartz.dart';

import '../../../../manager/home/data/model/newest_orders_response.dart';
import '../../data/models/chef_order_details.dart';
import '../../data/models/order_types_response.dart';

abstract class OrdersTypeRepo {
 Future <Either<ErrorModel,NewestOrdersResponse>> getNewOrders();
  Future <Either<ErrorModel,OrderTypeResponse>>  getCompletedOrders();
  Future <Either<ErrorModel,OrderTypeResponse>>  getAcceptedOrders();
  Future <Either<ErrorModel,OrderTypeResponse>>  getPendingOrders();
    Future<Either<ErrorModel, ChefOrderDetails>> getChefOrderDetails(int orderId);


}

class OrdersTypeRepoImp implements OrdersTypeRepo {
  final OrdersTypeRemoteDataSource ordersTypeRemoteDataSource;

  OrdersTypeRepoImp(this.ordersTypeRemoteDataSource);

  @override
  Future<Either<ErrorModel,NewestOrdersResponse>> getNewOrders() {
    return ordersTypeRemoteDataSource.getNewOrders();
  }
  
  @override
  Future<Either<ErrorModel,OrderTypeResponse>> getAcceptedOrders() {
       return ordersTypeRemoteDataSource.getAcceptedOrders();

  }
  
  @override
  Future<Either<ErrorModel, OrderTypeResponse>> getCompletedOrders() {
       return ordersTypeRemoteDataSource.getCompletedOrders();

  }
  
  @override
  Future<Either<ErrorModel, OrderTypeResponse>> getPendingOrders() {
       return ordersTypeRemoteDataSource.getPendingOrders();

  }
  
  @override
  Future<Either<ErrorModel, ChefOrderDetails>> getChefOrderDetails(int orderId) async{
    return ordersTypeRemoteDataSource.getChefOrderDetails(orderId);
  }
}
