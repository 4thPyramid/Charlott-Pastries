import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../../data/model/accept_order_response.dart';
import '../repo/order_details_repo.dart';

class AcceptOrderUseCase {
  final OrderDetailsRepository _orderRepository;
  AcceptOrderUseCase(this._orderRepository);

  Future<Either<ErrorModel, AcceptOrderResponse>>  call(int orderId) async {
    return _orderRepository.acceptOrderDetails(orderId);
  }

}