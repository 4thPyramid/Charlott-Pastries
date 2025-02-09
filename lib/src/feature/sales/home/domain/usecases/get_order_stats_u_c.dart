import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/home/data/datasource/home_remote_d_s.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/order_status_counts.dart';

class GetOrderStatsUC {
  final SalesHomeRemoteDS remoteDS;

  GetOrderStatsUC(this.remoteDS);

  Future<Either<ErrorModel, OrderStatusCountsModel>> call() async {
    return await remoteDS.getOrderStats();
  }
}
