import 'package:charlot/src/feature/chef/chef_orders_status/domain/repo/orders_type_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/models/order_types_response.dart';

class PendingOrdersUseCase {
   final OrdersTypeRepo ordersTypeRepo;

  PendingOrdersUseCase(this.ordersTypeRepo);

  Future <Either<ErrorModel,OrderTypeResponse>> call ()async{
    return await ordersTypeRepo.getPendingOrders();
  }

}