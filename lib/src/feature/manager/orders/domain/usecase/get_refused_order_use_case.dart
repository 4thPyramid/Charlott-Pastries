import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/refused_orders_response.dart';
import '../repo/orders_repo.dart';

class GetRefusedOrderUseCase {
  final OrderRepository _orderRepository;

  GetRefusedOrderUseCase(this._orderRepository);

  Future<Either<ErrorModel, RefusedOrderResponse>> call() {
    return _orderRepository.refusedOrders();
  }
}