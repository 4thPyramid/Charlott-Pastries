import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_order_client_data_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/repo/add_order_repo.dart';
import 'package:dartz/dartz.dart';

class AddClientDataUc {
  final AddOrderRepo addOrderRepo;
  AddClientDataUc(this.addOrderRepo);
  Future<Either<ErrorModel, AddOrderResponseModel>> call(
      AddCustomerRequestModel request, int orderId) {
    return addOrderRepo.addOrderClientData(request, orderId);
  }
}
