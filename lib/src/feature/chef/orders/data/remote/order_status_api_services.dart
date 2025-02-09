import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';

abstract class OrderStatusApiService {
  Future<Either<ErrorModel, String>> acceptOrder(int orderId);
 // Future<Either<ErrorModel, String>> declineOrder(int orderId);
  Future<Either<ErrorModel, String>> startOrder(int orderId);
  Future<Either<ErrorModel, String>> orderDone(int orderId);
}

class OrderStatusApiServiceImpl extends OrderStatusApiService {
  final ApiConsumer api;
  OrderStatusApiServiceImpl(this.api);
  @override
  Future<Either<ErrorModel, String>> acceptOrder(int orderId) async {
    try {
      final response =
          await api.put(EndpointsStrings.chefAcceptOrder + orderId.toString());

      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  // @override
  // Future<Either<ErrorModel, String>> declineOrder(int orderId) async {
  //   try {
  //     final response =
  //         await api.put(EndpointsStrings.chefDeclineOrder + orderId.toString());

  //     return Right(response['message']);
  //   } on ServerException catch (e) {
  //     return Left(e.errorModel);
  //   }
  // }

  @override
  Future<Either<ErrorModel, String>> orderDone(int orderId) async {
    try {
      final response =
          await api.put(EndpointsStrings.chefDoneOrder + orderId.toString());

      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> startOrder(int orderId) async {
    try {
      final response =
          await api.put(EndpointsStrings.chefStartOrder + orderId.toString());

      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
