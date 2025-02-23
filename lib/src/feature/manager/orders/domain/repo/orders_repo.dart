import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/orders_response.dart';
import '../../data/model/refused_orders_response.dart';
import '../../data/remote/orders_remote_ds.dart';

abstract class OrderRepository {
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
  Future<Either<ErrorModel, OrdersResponse>> notAssignOrder(
      DateTime? from, DateTime? to);
  Future<Either<ErrorModel, OrdersResponse>> assignOrder();

  Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders();
}

class OrderRepositoryImpl extends OrderRepository {
  final OrdersRemoteDs ordersRemoteDs;
  OrderRepositoryImpl(this.ordersRemoteDs);
  @override
  Future<Either<ErrorModel, OrdersResponse>> completedOrder(
    DateTime? from,
    DateTime? to,
  ) async {
    return ordersRemoteDs.completedOrder(
      from,
      to,
    );
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder(
      DateTime? from, DateTime? to) async {
    return ordersRemoteDs.deliveredOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder(
      DateTime? from, DateTime? to) async {
    return ordersRemoteDs.returnedOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder(
      DateTime? from, DateTime? to) async {
    return ordersRemoteDs.withDeliveryOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, RefusedOrderResponse>> refusedOrders() async {
    return ordersRemoteDs.refusedOrders();
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> notAssignOrder(
      DateTime? from, DateTime? to) async {
    return ordersRemoteDs.notAssignOrder(from, to);
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> assignOrder() async {
    return ordersRemoteDs.assignOrder();
  }
}
