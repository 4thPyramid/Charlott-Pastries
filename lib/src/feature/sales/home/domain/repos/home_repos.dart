import 'package:charlot/src/feature/sales/home/data/models/order_status_counts.dart';
import 'package:charlot/src/feature/sales/home/data/datasource/home_remote_d_s.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';

abstract class SalesHomeRepo {
  Future<Either<ErrorModel, OrderStatusCountsModel>> getProfile();
}

class SalesHomeRepoImpl extends SalesHomeRepo {
  final SalesHomeRemoteDS remoteDS;

  SalesHomeRepoImpl(this.remoteDS);
  @override
  Future<Either<ErrorModel, OrderStatusCountsModel>> getProfile() async {
    return await remoteDS.getOrderStats();
  }
}
