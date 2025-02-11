import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orderDetails/data/datasource/sales_details_order_remote_data_source.dart';
import 'package:charlot/src/feature/sales/orderDetails/data/models/sales_order_details_response.dart';
import 'package:dartz/dartz.dart';

abstract class SalesOrderDetailsRepo {
  Future<Either<ErrorModel, SalesOrderDetailsResponse>> getSalesOrderDetails(
      String orderId);
}

class SalesOrderDetailsRepoImpl implements SalesOrderDetailsRepo {
  final SalesOrderDetailsRemoteDataSource salesOrderDetailsRemoteDataSource;
  SalesOrderDetailsRepoImpl(this.salesOrderDetailsRemoteDataSource);
  @override
  Future<Either<ErrorModel, SalesOrderDetailsResponse>> getSalesOrderDetails(
      String orderId) {
    return salesOrderDetailsRemoteDataSource.getSalesOrderDetails(orderId);
  }
}
