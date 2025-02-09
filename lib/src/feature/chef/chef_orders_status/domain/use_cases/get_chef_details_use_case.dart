import 'package:charlot/src/feature/chef/chef_orders_status/domain/repo/orders_type_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/models/chef_order_details.dart';

class GetChefOrderDetailsUseCase {
  final OrdersTypeRepo _ordersTypeRepo;
  GetChefOrderDetailsUseCase(this._ordersTypeRepo);

 Future<Either<ErrorModel, ChefOrderDetails>> getChefOrderDetails(int orderId) {
    return _ordersTypeRepo.getChefOrderDetails(orderId);
  }
}