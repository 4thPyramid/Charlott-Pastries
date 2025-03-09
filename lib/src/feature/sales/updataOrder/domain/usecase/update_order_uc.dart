import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/updataOrder/domain/repo/update_order_repo.dart';
import 'package:dartz/dartz.dart';

class UpdateOrderUseCase {
  final UpdateOrderRepo repository;

  UpdateOrderUseCase(this.repository);

  Future<Either<ErrorModel, Map<String, dynamic>>> call(
      int orderId, Map<String, dynamic> updatedFields) async {
    return await repository.updateOrder(orderId, updatedFields);
  }
}
