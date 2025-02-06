import 'package:charlot/src/feature/sales/home/data/home_api_service.dart';
import 'package:charlot/src/feature/sales/home/data/mdoels/banners/banners.dart';
import 'package:charlot/src/feature/sales/home/data/mdoels/profile/profile.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import 'mdoels/orders_state.dart';

class RemoteDS {
  final HomeApiService api;

  RemoteDS(this.api);

  Future <Either<ErrorModel, Profile>>getProfile () async{
    return await  api.geProfile();
  }
  Future <Either<ErrorModel, Banners>>getBanner () async{
    return await  api.getBanner();
  }Future <Either<ErrorModel, OrderStatusModel>>getOrderStats () async{
    return await  api.getOrdersStatus();
  }
}