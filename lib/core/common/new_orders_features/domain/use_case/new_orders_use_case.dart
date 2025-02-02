import 'package:charlot/core/common/new_orders_features/data/model/new_orders_model.dart';
import 'package:charlot/core/common/new_orders_features/domain/repo/new_orders_repo.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

class NewOrdersUseCase {
  final NewOrdersRepo newOrdersRepo;

  NewOrdersUseCase(this.newOrdersRepo);
  Future<Either<ErrorModel, NewOrderModel>> call() => newOrdersRepo.getNewOrders();
}