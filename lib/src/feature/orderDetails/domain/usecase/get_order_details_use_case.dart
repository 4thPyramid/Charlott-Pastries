import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../../data/model/order_details_response.dart';
import '../repo/order_details_repo.dart';

class GetOrderDetailsUseCase {
  final OrderDetailsRepository _orderDetailsRepository;

  GetOrderDetailsUseCase(this._orderDetailsRepository);

      Future<Either<ErrorModel, OrderDetailsResponse>>  call(int orderId) {
    return _orderDetailsRepository.orderDetails(orderId);
  }
}