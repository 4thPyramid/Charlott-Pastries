import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

import '../../../../manager/home/data/model/newest_orders_response.dart';
import '../models/chef_order_details.dart';
import '../models/order_types_response.dart';

abstract class OrdersTypeApiService {
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrders();
  Future<Either<ErrorModel, OrderTypeResponse>> getCompletedOrders();
  Future<Either<ErrorModel, OrderTypeResponse>> getAcceptedOrders();
  Future<Either<ErrorModel, OrderTypeResponse>> getPendingOrders();
  Future<Either<ErrorModel, ChefOrderDetails>> getChefOrderDetails(int orderId);
}

class OrdersTypeApiServiceImpl implements OrdersTypeApiService {
  final ApiConsumer api;

  OrdersTypeApiServiceImpl(this.api);
  @override
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrders() async {
    try {
      final response = await api.get(EndpointsStrings.chefNewsOrder);

      return Right(NewestOrdersResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, OrderTypeResponse>> getCompletedOrders() async {
    try {
      final response = await api.get(EndpointsStrings.chefCompletedOrder);
      final ordersType = OrderTypeResponse.fromJson(response);
      return Right(ordersType);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, OrderTypeResponse>> getAcceptedOrders() async {
    try {
      final response = await api.get(EndpointsStrings.chefAcceptedOrder);
      final ordersType = OrderTypeResponse.fromJson(response);
      return Right(ordersType);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, OrderTypeResponse>> getPendingOrders() async {
    try {
      final response = await api.get(EndpointsStrings.chefPendingOrder);
      final ordersType = OrderTypeResponse.fromJson(response);
      return Right(ordersType);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, ChefOrderDetails>> getChefOrderDetails(
      int orderId) async {
    try {
      final response =
          await api.get(EndpointsStrings.chefOrderDetails + orderId.toString());
      final chefOrderDetails = ChefOrderDetails.fromJson(response['order']);
      return Right(chefOrderDetails);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
