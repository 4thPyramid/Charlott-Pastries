import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../model/accept_order_response.dart';
import '../model/order_details_response.dart';
import 'order_details_api_service.dart';

abstract class OrderDetailsRemoteDs {
    Future<Either<ErrorModel, OrderDetailsResponse>> orderDetails(int orderId);
 Future<Either<ErrorModel, AcceptOrderResponse>> acceptOrderDetails(
      int orderId);
}

class OrderDetailsRemoteDsImpl extends OrderDetailsRemoteDs {
  final OrderDetailsApiService api;
  OrderDetailsRemoteDsImpl(this.api);
  @override
  Future<Either<ErrorModel, OrderDetailsResponse>> orderDetails(int orderId) async {
    return api.orderDetails(orderId);
  }
  
  @override
  Future<Either<ErrorModel, AcceptOrderResponse>> acceptOrderDetails(int orderId) async {
    return api.acceptOrderDetails(orderId);
  }
}