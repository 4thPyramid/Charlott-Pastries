
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/orders_response.dart';
import '../repo/orders_repo.dart';

class GetOrderWithDeliveryUseCase {
  final OrderRepository _orderRepository;

  GetOrderWithDeliveryUseCase(this._orderRepository);

  Future<Either<ErrorModel, OrdersResponse>> call(
      DateTime? from, DateTime? to) {
    return _orderRepository.withDeliveryOrder(from, to);
  }
}