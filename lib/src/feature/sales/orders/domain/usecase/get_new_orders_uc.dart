import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orders/data/models/orders_statues_response_model.dart';
import 'package:charlot/src/feature/sales/orders/domain/repo/order_statues_repo.dart';
import 'package:dartz/dartz.dart';

class GetNewOrdersUC {
  final SalesOrderStatusRepo repo;
  GetNewOrdersUC(this.repo);
  Future<Either<ErrorModel, OrdersStatuesResponseModel>> call() async {
    return await repo.getNewOrder();
  }
}
