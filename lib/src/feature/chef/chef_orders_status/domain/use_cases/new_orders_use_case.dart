import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/domain/repo/orders_type_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../manager/home/data/model/newest_orders_response.dart';

class NewOrdersUseCase {
  final OrdersTypeRepo ordersTypeRepo;

  NewOrdersUseCase(this.ordersTypeRepo);

  Future < Either<ErrorModel,NewestOrdersResponse>> call()async{
    return await ordersTypeRepo.getNewOrders();
  }
}