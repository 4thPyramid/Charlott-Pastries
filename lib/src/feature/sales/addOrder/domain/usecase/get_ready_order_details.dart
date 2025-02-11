import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/single_product_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/repo/add_order_repo.dart';
import 'package:dartz/dartz.dart';

class GetReadyOrderDetailsUC {
  final AddOrderRepo _addOrderRepo;
  GetReadyOrderDetailsUC(this._addOrderRepo);
  Future<Either<ErrorModel, SingleProductModel>> call(int orderId) {
    return _addOrderRepo.getReadyOrderDetails(orderId);
  }
}
