import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/home/data/remote_d_s.dart';
import 'package:dartz/dartz.dart';

import '../../data/mdoels/orders_state.dart';

class GetOrderStatsUC {
  final RemoteDS remoteDS;

  GetOrderStatsUC(this.remoteDS);

  Future<Either<ErrorModel,OrderStatusModel >> call() async {
    return await remoteDS.getOrderStats();
}
}
