import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/repo/add_order_repo.dart';
import 'package:dartz/dartz.dart';

class AddOrderDetailsUC {
  final AddOrderRepo addOrderRepo;
  AddOrderDetailsUC(this.addOrderRepo);
  Future<Either<ErrorModel, AddOrderResponseModel>> call(
      AddOrderRequestModel request) {
    return addOrderRepo.addOrderDetails(request);
  }
}
