import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/in_progress_order_response.dart';
import '../model/newest_orders_response.dart';
import '../model/stats_response.dart';
import 'home_api_services.dart';

abstract class HomeRemoteDs {
    Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder();
  Future<Either<ErrorModel, InProgressOrderResponse>> getInProgressOrder();
    Future<Either<ErrorModel,  StatsResponse >> getStats();


}

class HomeRemoteDsImpl extends HomeRemoteDs {
  final HomeApiServices homeApiServices;
  HomeRemoteDsImpl(this.homeApiServices);
  @override
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder() async {
    return homeApiServices.getNewOrder();
  }
  
  @override
  Future<Either<ErrorModel, InProgressOrderResponse>> getInProgressOrder() async{
    return homeApiServices.getInProgressOrder();
  }
  
  @override
  Future<Either<ErrorModel, StatsResponse>> getStats() async{
    return homeApiServices.getStats();
  }
}