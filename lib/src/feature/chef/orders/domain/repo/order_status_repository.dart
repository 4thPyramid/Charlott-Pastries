import 'package:charlot/src/feature/chef/orders/data/remote/order_status_remote_ds.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';

abstract class OrderStatusRepository {

  Future<Either<ErrorModel, String>> acceptOrder(int orderId);
  //Future<Either<ErrorModel, String>> declineOrder(int orderId);
  Future<Either<ErrorModel, String>> startOrder(int orderId);
  Future<Either<ErrorModel, String>> orderDone(int orderId);
}


class OrderStatusRepositoryImpl extends OrderStatusRepository{
  final OrderStatusRemoteDs orderStatusRemoteDs;
  OrderStatusRepositoryImpl( this.orderStatusRemoteDs);
  
  @override
  Future<Either<ErrorModel, String>> acceptOrder(int orderId) async{
    return orderStatusRemoteDs.acceptOrder(orderId);
  }
  
 
  
  @override
  Future<Either<ErrorModel, String>> orderDone(int orderId) async{
    return orderStatusRemoteDs.orderDone(orderId);
  }
  
  @override
  Future<Either<ErrorModel, String>> startOrder(int orderId) async{
    return orderStatusRemoteDs.startOrder(orderId);
  }
}