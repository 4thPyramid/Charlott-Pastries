import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/in_progress_order_response.dart';
import '../model/newest_orders_response.dart';
import '../model/stats_response.dart';

abstract class HomeApiServices {
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder();
  Future<Either<ErrorModel, InProgressOrderResponse>> getInProgressOrder();
  Future<Either<ErrorModel,  StatsResponse >> getStats();
}

class HomeApiServicesImpl extends HomeApiServices {
  final ApiConsumer api;
  HomeApiServicesImpl(this.api);
  @override
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder() async {
    try {
      final response = await api.get(
        EndpointsStrings.managerNewOrders,
      );
      return Right(NewestOrdersResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, InProgressOrderResponse>> getInProgressOrder() async {
    try {
      final response = await api.get(
        EndpointsStrings.managerInProgressOrder,
      );
      return Right(InProgressOrderResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  
  }
  
  @override
  Future<Either<ErrorModel, StatsResponse>> getStats() async {
    try {
      final response = await api.get(
        EndpointsStrings.managerStats,
      );
      return Right(StatsResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
    
  }
}
