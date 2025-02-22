import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orderDetails/data/models/sales_order_details_response.dart';
import 'package:charlot/src/feature/sales/orderDetails/domain/repo/sales_order_details_rep.dart';
import 'package:dartz/dartz.dart';

class SalesGetOrderDetailsUC {
  final SalesOrderDetailsRepo salesOrderDetailsRepo;
  SalesGetOrderDetailsUC(this.salesOrderDetailsRepo);

  Future<Either<ErrorModel, SalesOrder>> call(
      String orderId) async {
    return await salesOrderDetailsRepo.getSalesOrderDetails(orderId);
  }
}
