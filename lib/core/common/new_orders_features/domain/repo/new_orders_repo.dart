import 'package:charlot/core/common/new_orders_features/data/data_sorce/new_orders_remote_ds.dart';
import 'package:charlot/core/common/new_orders_features/data/model/new_orders_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

abstract class NewOrdersRepo {
  Future<Either<ErrorModel, NewOrderModel>> getNewOrders();
}

class NewOrdersRepoImp implements NewOrdersRepo {
  final NewOrdersRemoteDs newOrdersRemoteDs;
  NewOrdersRepoImp(this.newOrdersRemoteDs);
  @override
  Future<Either<ErrorModel, NewOrderModel>> getNewOrders() {
    return newOrdersRemoteDs.getNewOrders();
  }
}