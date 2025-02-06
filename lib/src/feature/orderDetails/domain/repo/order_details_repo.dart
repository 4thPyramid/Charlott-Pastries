import 'package:charlot/src/feature/orderDetails/data/model/order_details_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../../data/model/accept_order_response.dart';
import '../../data/remote/order_details_remote_ds.dart';

abstract class OrderDetailsRepository {
    Future<Either<ErrorModel, OrderDetailsResponse>> orderDetails(int orderId);
     Future<Either<ErrorModel, AcceptOrderResponse>> acceptOrderDetails(
      int orderId);
}

class OrderDetailsRepositoryImpl extends OrderDetailsRepository {
  final OrderDetailsRemoteDs orderDetailsRemoteDs;
  OrderDetailsRepositoryImpl(this.orderDetailsRemoteDs);
  @override
  Future<Either<ErrorModel, OrderDetailsResponse>> orderDetails(int orderId) async {
    return orderDetailsRemoteDs.orderDetails(orderId);
  }
  
  @override
  Future<Either<ErrorModel, AcceptOrderResponse>> acceptOrderDetails(int orderId) async {
    return orderDetailsRemoteDs.acceptOrderDetails(orderId);
  }
}