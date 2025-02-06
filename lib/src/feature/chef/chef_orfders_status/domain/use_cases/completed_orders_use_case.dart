import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/models/orders_type_model.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/repo/orders_type_repo.dart';
import 'package:dartz/dartz.dart';

class CompletedOrdersUseCase {
  final OrdersTypeRepo ordersTypeRepo;
  CompletedOrdersUseCase(this.ordersTypeRepo);
  Future < Either<ErrorModel,List<OrdersTypeModel>>> call()async{
    return await ordersTypeRepo.getCompletedOrders();
  }
}