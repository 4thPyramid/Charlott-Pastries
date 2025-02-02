import 'package:charlot/core/common/new_orders_features/data/data_sorce/new_orders_api_servcies.dart';
import 'package:charlot/core/common/new_orders_features/data/model/new_orders_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

abstract class NewOrdersRemoteDs {
  Future <Either<ErrorModel,NewOrderModel>> getNewOrders();
}

class NewOrdersRemoteDsImp implements NewOrdersRemoteDs {
  final NewOrdersApiServcies apiServcies;
  NewOrdersRemoteDsImp(this.apiServcies);
  @override
  Future<Either<ErrorModel, NewOrderModel>> getNewOrders() {
    return apiServcies.getNewOrders();
  }
}