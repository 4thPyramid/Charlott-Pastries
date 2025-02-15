import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/orders_response.dart';
import '../model/refused_orders_response.dart';

abstract class OrdersApiServices {
  Future<Either<ErrorModel, OrdersResponse>> completedOrder();
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder();
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder();
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder();
  Future<Either<ErrorModel, OrdersResponse>> notAssignOrder();
  Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders();
  
}

class OrdersApiServicesImpl extends OrdersApiServices {
  final ApiConsumer api;
  OrdersApiServicesImpl(this.api);
  @override
  Future<Either<ErrorModel, OrdersResponse>> completedOrder() async {
    try {
      final response = await api.get(EndpointsStrings.completedOrders);
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder() async {
    try {
      final response = await api.get(EndpointsStrings.deliveredOrders);
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  @override
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder() async {
    try {
      final response = await api.get(EndpointsStrings.returnedOrders);
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder() async {
    try {
      final response = await api.get(EndpointsStrings.withDeliveryOrders);
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
    @override
  Future<Either<ErrorModel, OrdersResponse>> notAssignOrder() async {
    try {
      final response = await api.get(EndpointsStrings.notAssignedOrders);
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders() async {
    try {
      final response = await api.get(EndpointsStrings.refusedOrders);
      final refusedOrdersResponse = RefusedOrderResponse.fromJson(response);
      return Right(refusedOrdersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
