import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/in_progress_order_response.dart';
import '../../data/model/newest_orders_response.dart';
import '../../data/model/stats_response.dart';
import '../../data/remote/home_remote_ds.dart';

abstract class HomeRepository {
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder();
    Future<Either<ErrorModel, InProgressOrderResponse>> getInProgressOrder();
      Future<Either<ErrorModel,  StatsResponse >> getStats();


}

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDs homeRemoteDs;
  HomeRepositoryImpl(this.homeRemoteDs);
  @override
  Future<Either<ErrorModel, NewestOrdersResponse>> getNewOrder() async {
    return homeRemoteDs.getNewOrder();
  }
  
  @override
  Future<Either<ErrorModel, InProgressOrderResponse>> getInProgressOrder() async {
    return homeRemoteDs.getInProgressOrder();
  }
  
  @override
  Future<Either<ErrorModel, StatsResponse>> getStats() async {
    return homeRemoteDs.getStats();
  }
}