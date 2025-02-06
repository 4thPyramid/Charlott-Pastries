import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/orders_response.dart';
import '../model/refused_orders_response.dart';
import 'orders_api_services.dart';

abstract class OrdersRemoteDs {
  Future<Either<ErrorModel, OrdersResponse>> completedOrder();
   Future<Either<ErrorModel, OrdersResponse>> returnedOrder();
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder();
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder();
    Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders();

}

class OrdersRemoteDsImpl extends OrdersRemoteDs {
  final OrdersApiServices api;
  OrdersRemoteDsImpl(this.api);
  @override
  Future<Either<ErrorModel, OrdersResponse>> completedOrder() async {
    return api.completedOrder();
  }
  
  @override
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder() async {
    return api.deliveredOrder();
  
  }
  
  @override
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder()async {
    return api.returnedOrder();
  }
  
  @override
    Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder() async {
    return api.withDeliveryOrder();
    }
    
      @override
      Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders() async {
        return api.refusedOrders();
      }
   
}