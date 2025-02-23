import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/orders_response.dart';
import '../repo/orders_repo.dart';

class GetCompletedOrderUseCase {
  final OrderRepository _orderRepository;

  GetCompletedOrderUseCase(this._orderRepository);

  Future<Either<ErrorModel, OrdersResponse>> call(
    DateTime? from,
    DateTime? to,
  ) {
    return _orderRepository.completedOrder(
      from,
      to,
    );
  }
}
