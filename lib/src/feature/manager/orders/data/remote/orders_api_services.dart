import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/orders_response.dart';
import '../model/refused_orders_response.dart';

abstract class OrdersApiServices {
  Future<Either<ErrorModel, OrdersResponse>> completedOrder(
      DateTime? from, DateTime? to);
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

class OrdersApiServicesImpl extends OrdersApiServices {
  final ApiConsumer api;
  OrdersApiServicesImpl(this.api);

  @override
  Future<Either<ErrorModel, OrdersResponse>> completedOrder(
      DateTime? from, DateTime? to) async {
    try {
      final dateFormat = DateFormat('yyyy-MM-dd');

      final queryParameters = <String, String>{};
      if (from != null) queryParameters['from'] = dateFormat.format(from);
      if (to != null) queryParameters['to'] = dateFormat.format(to);

      final uri = Uri.https(
        'management.mlmcosmo.com',
        EndpointsStrings.completedOrders,
        queryParameters.isNotEmpty ? queryParameters : null,
      );

      final response = await api.get(uri.toString());
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> deliveredOrder(
      DateTime? from, DateTime? to) async {
    try {
      final dateFormat = DateFormat('yyyy-MM-dd');

      final queryParameters = <String, String>{};
      if (from != null) queryParameters['from'] = dateFormat.format(from);
      if (to != null) queryParameters['to'] = dateFormat.format(to);

      final uri = Uri.https(
        'management.mlmcosmo.com',
        EndpointsStrings.deliveredOrders,
        queryParameters.isNotEmpty ? queryParameters : null,
      );

      final response = await api.get(uri.toString());
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> returnedOrder(
      DateTime? from, DateTime? to) async {
    try {
      final dateFormat = DateFormat('yyyy-MM-dd');

      final queryParameters = <String, String>{};
      if (from != null) queryParameters['from'] = dateFormat.format(from);
      if (to != null) queryParameters['to'] = dateFormat.format(to);

      final uri = Uri.https(
        'management.mlmcosmo.com',
        EndpointsStrings.returnedOrders,
        queryParameters.isNotEmpty ? queryParameters : null,
      );

      final response = await api.get(uri.toString());
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> withDeliveryOrder(
      DateTime? from, DateTime? to) async {
    try {
      final dateFormat = DateFormat('yyyy-MM-dd');

      final queryParameters = <String, String>{};
      if (from != null) queryParameters['from'] = dateFormat.format(from);
      if (to != null) queryParameters['to'] = dateFormat.format(to);

      final uri = Uri.https(
        'management.mlmcosmo.com',
        EndpointsStrings.withDeliveryOrders,
        queryParameters.isNotEmpty ? queryParameters : null,
      );

      final response = await api.get(uri.toString());
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, OrdersResponse>> notAssignOrder(
      DateTime? from, DateTime? to) async {
    try {
      final dateFormat = DateFormat('yyyy-MM-dd');

      final queryParameters = <String, String>{};
      if (from != null) queryParameters['from'] = dateFormat.format(from);
      if (to != null) queryParameters['to'] = dateFormat.format(to);

      final uri = Uri.https(
        'management.mlmcosmo.com',
        EndpointsStrings.notAssignedOrders,
        queryParameters.isNotEmpty ? queryParameters : null,
      );

      final response = await api.get(uri.toString());
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

  @override
  Future<Either<ErrorModel, OrdersResponse>> assignOrder() async {
    try {
      final response = await api.get(EndpointsStrings.assignedOrders);
      final ordersResponse = OrdersResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
