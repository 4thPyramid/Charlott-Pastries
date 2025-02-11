import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orderDetails/data/models/sales_order_details_response.dart';
import 'package:dartz/dartz.dart';

abstract class SalesOrderDetailsApiService {
  Future<Either<ErrorModel, SalesOrderDetailsResponse>> getSalesOrderDetails(
      String orderId);
}

class SalesOrderDetailsApiServiceImpl implements SalesOrderDetailsApiService {
  final ApiConsumer apiConsumer;
  SalesOrderDetailsApiServiceImpl(this.apiConsumer);
  @override
  Future<Either<ErrorModel, SalesOrderDetailsResponse>> getSalesOrderDetails(
      String orderId) async {
    try {
      final response = await apiConsumer.get(
        'sales/orders/$orderId',
      );
      return Right(SalesOrderDetailsResponse.fromJson(response));
    } catch (e) {
      return Left(ErrorModel(message: e.toString()));
    }
  }
}
