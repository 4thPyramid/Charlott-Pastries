import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/in_progress_order_response.dart';
import '../model/newest_orders_response.dart';
import '../model/stats_response.dart';

abstract class HomeApiServices {
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder(
      DateTime? from, DateTime? to);
  Future<Either<ErrorModel, InProgressOrderResponse>> getInProgressOrder();
  Future<Either<ErrorModel, StatsResponse>> getStats();
}

class HomeApiServicesImpl extends HomeApiServices {
  final ApiConsumer api;
  HomeApiServicesImpl(this.api);
  @override
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder(
      DateTime? from, DateTime? to) async {
    try {
      final dateFormat = DateFormat('yyyy-MM-dd');
      final queryParameters = <String, String>{};

      if (from != null) queryParameters['from'] = dateFormat.format(from);
      if (to != null) queryParameters['to'] = dateFormat.format(to);

      final uri = Uri.https(
        'management.mlmcosmo.com',
        EndpointsStrings.managerNewOrders,
        queryParameters.isNotEmpty ? queryParameters : null,
      );

      final response = await api.get(uri.toString());
      return Right(NewestOrdersResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, InProgressOrderResponse>>
      getInProgressOrder() async {
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
