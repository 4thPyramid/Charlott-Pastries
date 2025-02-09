import 'package:charlot/src/feature/chef/orders/data/remote/order_status_api_services.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';

abstract class OrderStatusRemoteDs {
    Future<Either<ErrorModel, String>> acceptOrder(int orderId);
 // Future<Either<ErrorModel, String>> declineOrder(int orderId);
  Future<Either<ErrorModel, String>> startOrder(int orderId);
  Future<Either<ErrorModel, String>> orderDone(int orderId);
}

class OrderStatusRemoteDsImpl extends OrderStatusRemoteDs{
  final OrderStatusApiService apiService;
  OrderStatusRemoteDsImpl( this.apiService);
  @override
  Future<Either<ErrorModel, String>> acceptOrder(int orderId) async{
return apiService.acceptOrder(orderId);
  
  }

 

  @override
  Future<Either<ErrorModel, String>> orderDone(int orderId) async {
    return apiService.orderDone(orderId);
  }

  @override
  Future<Either<ErrorModel, String>> startOrder(int orderId)async {
    return apiService.startOrder(orderId);
  }

}