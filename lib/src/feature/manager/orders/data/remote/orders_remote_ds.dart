import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/orders_response.dart';
import '../model/refused_orders_response.dart';
import 'orders_api_services.dart';

abstract class OrdersRemoteDs {
  Future<Either<ErrorModel, OrdersResponse>> completedOrder(
    DateTime? from,
    DateTime? to,
  );
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder(
      DateTime? from, DateTime? to);
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder(
      DateTime? from, DateTime? to);
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder(
      DateTime? from, DateTime? to);
  Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders();
  Future<Either<ErrorModel, OrdersResponse>> notAssignOrder(
      DateTime? from, DateTime? to);
  Future<Either<ErrorModel, OrdersResponse>> assignOrder();
}

class OrdersRemoteDsImpl extends OrdersRemoteDs {
  final OrdersApiServices api;
  OrdersRemoteDsImpl(this.api);
  @override
  Future<Either<ErrorModel, OrdersResponse>> completedOrder(
    DateTime? from,
    DateTime? to,
  ) async {
    return api.completedOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder(
      DateTime? from, DateTime? to) async {
    return api.deliveredOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder(
      DateTime? from, DateTime? to) async {
    return api.returnedOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder(
      DateTime? from, DateTime? to) async {
    return api.withDeliveryOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders() async {
    return api.refusedOrders();
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> notAssignOrder(
      DateTime? from, DateTime? to) async {
    return api.notAssignOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> assignOrder() async {
    return api.assignOrder();
  }
}
