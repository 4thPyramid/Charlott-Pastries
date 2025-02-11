import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/all_ready_product_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/repo/add_order_repo.dart';
import 'package:dartz/dartz.dart';

class GetAllReadyProductsUC {
  final AddOrderRepo _addOrderRepo;
  GetAllReadyProductsUC(this._addOrderRepo);
  Future<Either<ErrorModel, AllReadyProductModel>> call() {
    return _addOrderRepo.getAllReadyProducts();
  }
}
