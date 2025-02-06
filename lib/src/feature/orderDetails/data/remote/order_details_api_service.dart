import 'package:dartz/dartz.dart';

import '../../../../../core/constants/endpoints_strings.dart';
import '../../../../../core/data/api/api_consumer.dart';
import '../../../../../core/errors/error_model.dart';
import '../../../../../core/errors/exceptions.dart';
import '../model/accept_order_response.dart';
import '../model/order_details_response.dart';

abstract class OrderDetailsApiService {
  Future<Either<ErrorModel, OrderDetailsResponse>> orderDetails(int orderId);
  Future<Either<ErrorModel, AcceptOrderResponse>> acceptOrderDetails(
      int orderId);
}

class OrderDetailsApiServiceImpl extends OrderDetailsApiService {
  final ApiConsumer api;
  OrderDetailsApiServiceImpl(this.api);
  @override
  Future<Either<ErrorModel, OrderDetailsResponse>> orderDetails(
      int orderId) async {
    try {
      final response = await api
          .get(EndpointsStrings.managerOrderDetails + orderId.toString());
      final ordersResponse = OrderDetailsResponse.fromJson(response);
      return Right(ordersResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, AcceptOrderResponse>> acceptOrderDetails(
      int orderId) async {
    try {
      final response =
          await api.post(EndpointsStrings.acceptOrder + orderId.toString());

      final acceptOrderResponse = AcceptOrderResponse.fromJson(response);
      return Right(acceptOrderResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
