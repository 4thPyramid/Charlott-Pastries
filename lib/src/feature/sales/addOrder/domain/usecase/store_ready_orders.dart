import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/store_ready_orders_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/repo/add_order_repo.dart';
import 'package:dartz/dartz.dart';

class StoreReadyOrdersUseCase {
  final AddOrderRepo _addOrderRepo;
  StoreReadyOrdersUseCase(this._addOrderRepo);
  Future<Either<ErrorModel, StoreReadyOrdersModel>> call(
      int quantity, int orderId) {
    return _addOrderRepo.storeReadyOrders(quantity, orderId);
  }
}
