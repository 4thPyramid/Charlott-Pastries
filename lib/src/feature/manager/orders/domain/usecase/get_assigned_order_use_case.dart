import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/orders_response.dart';
import '../repo/orders_repo.dart';

class GetAssignedOrderUseCase {
  final OrderRepository _orderRepository;

  GetAssignedOrderUseCase(this._orderRepository);

  Future<Either<ErrorModel, OrdersResponse>> call() {
    return _orderRepository.assignOrder();
  }
}
