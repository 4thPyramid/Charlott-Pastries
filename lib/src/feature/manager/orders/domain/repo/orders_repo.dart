import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/orders_response.dart';
import '../../data/model/refused_orders_response.dart';
import '../../data/remote/orders_remote_ds.dart';

abstract class OrderRepository {
  Future<Either<ErrorModel, OrdersResponse>> completedOrder();
   Future<Either<ErrorModel, OrdersResponse>> returnedOrder();
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder();
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder();
    Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders();

}

class OrderRepositoryImpl extends OrderRepository {
  final OrdersRemoteDs ordersRemoteDs;
  OrderRepositoryImpl(this.ordersRemoteDs);
  @override
  Future<Either<ErrorModel, OrdersResponse>> completedOrder() async {
    return ordersRemoteDs.completedOrder();
  }
  
  @override
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder() async {
    return ordersRemoteDs.deliveredOrder();
  
  }
  
  @override
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder() async {
    return ordersRemoteDs.returnedOrder();
  }
  
  @override
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder() async {
    return ordersRemoteDs.withDeliveryOrder();
    }
    
      @override
      Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders() async {
        return ordersRemoteDs.refusedOrders();
      }
}

