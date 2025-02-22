import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orderDetails/data/datasource/sales_ordere_details_api_service.dart';
import 'package:charlot/src/feature/sales/orderDetails/data/models/sales_order_details_response.dart';
import 'package:dartz/dartz.dart';

abstract class SalesOrderDetailsRemoteDataSource {
  Future<Either<ErrorModel, SalesOrder>> getSalesOrderDetails(
      String orderId);
}

class SalesOrderDetailsRemoteDataSourceImpl
    implements SalesOrderDetailsRemoteDataSource {
  final SalesOrderDetailsApiService salesOrderDetailsApiService;
  SalesOrderDetailsRemoteDataSourceImpl(this.salesOrderDetailsApiService);
  @override
  Future<Either<ErrorModel, SalesOrder>> getSalesOrderDetails(
      String orderId) {
    return salesOrderDetailsApiService.getSalesOrderDetails(orderId);
  }
}
