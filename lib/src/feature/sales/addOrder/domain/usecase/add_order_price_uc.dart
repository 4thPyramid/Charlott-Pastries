import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_order_price_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/add_price_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/repo/add_order_repo.dart';
import 'package:dartz/dartz.dart';

class AddOrderPriceUC {
  final AddOrderRepo addOrderRepo;
  AddOrderPriceUC(this.addOrderRepo);
  Future<Either<ErrorModel, AddOrderResponseModel>> call(
      AddPriceRequestModel request, int orderId) {
    return addOrderRepo.addOrderPrice(request, orderId);
  }
}
