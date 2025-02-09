import 'package:charlot/src/feature/sales/home/data/datasource/home_api_service.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../models/order_status_counts.dart';

class SalesHomeRemoteDS {
  final SalesHomeApiService api;

  SalesHomeRemoteDS(this.api);

  Future<Either<ErrorModel, OrderStatusCountsModel>> getOrderStats() async {
    return await api.getOrdersStatus();
  }
}
