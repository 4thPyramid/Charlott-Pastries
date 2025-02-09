import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/data/datasource/orders_type_api_sevcies.dart';
import 'package:dartz/dartz.dart';

import '../../../../manager/home/data/model/newest_orders_response.dart';
import '../models/chef_order_details.dart';
import '../models/order_types_response.dart';

abstract class OrdersTypeRemoteDataSource {
  Future <Either<ErrorModel,NewestOrdersResponse>> getNewOrders();
  Future <Either<ErrorModel,OrderTypeResponse>>  getCompletedOrders();
  Future <Either<ErrorModel,OrderTypeResponse>>  getAcceptedOrders();
  Future <Either<ErrorModel,OrderTypeResponse>>  getPendingOrders();
  Future<Either<ErrorModel, ChefOrderDetails>> getChefOrderDetails(int orderId);

}

class OrdersTypeRemoteDataSourceImp implements OrdersTypeRemoteDataSource {
  final OrdersTypeApiService ordersTypeApiService;

  OrdersTypeRemoteDataSourceImp(this.ordersTypeApiService);

  @override
  Future<Either<ErrorModel,NewestOrdersResponse>> getNewOrders()async {
    return ordersTypeApiService.getNewOrders();
  }
  
  @override
  Future<Either<ErrorModel,OrderTypeResponse>> getAcceptedOrders() async{
    return ordersTypeApiService.getAcceptedOrders();
  }
  
  @override
  Future<Either<ErrorModel, OrderTypeResponse>> getCompletedOrders() async{
    return ordersTypeApiService.getCompletedOrders();
  }
  
  @override
  Future<Either<ErrorModel,OrderTypeResponse>> getPendingOrders() async{
   return ordersTypeApiService.getPendingOrders();
  }
  
  @override
  Future<Either<ErrorModel, ChefOrderDetails>> getChefOrderDetails(int orderId) async {
    return ordersTypeApiService.getChefOrderDetails(orderId);
  }
  
}
