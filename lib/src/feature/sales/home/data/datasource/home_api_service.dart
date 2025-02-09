import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

import '../models/order_status_counts.dart';

abstract class SalesHomeApiService {
  Future<Either<ErrorModel, OrderStatusCountsModel>> getOrdersStatus();
}

class SalesHomeApiServiceImpl extends SalesHomeApiService {
  final ApiConsumer apiConsumer;

  SalesHomeApiServiceImpl(this.apiConsumer);

  @override
  Future<Either<ErrorModel, OrderStatusCountsModel>> getOrdersStatus() async {
    try {
      final response = await apiConsumer.get(
        EndpointsStrings.salesOrdersStatus,
      );
      return Right(OrderStatusCountsModel.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
