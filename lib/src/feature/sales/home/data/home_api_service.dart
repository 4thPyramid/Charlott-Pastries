import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:charlot/src/feature/sales/home/data/mdoels/banners/banners.dart';
import 'package:charlot/src/feature/sales/home/data/mdoels/profile/profile.dart';
import 'package:dartz/dartz.dart';

import 'mdoels/orders_state.dart';

abstract class HomeApiService {
  Future <Either<ErrorModel,Profile>> geProfile();
  Future <Either<ErrorModel,Banners>> getBanner();
  Future <Either<ErrorModel,OrderStatusModel>> getOrdersStatus();
}
class HomeApiServiceImpl extends HomeApiService {
  final ApiConsumer apiConsumer;

  HomeApiServiceImpl(this.apiConsumer);
  @override
  Future <Either<ErrorModel,Profile>> geProfile() async {
    try {
      final response = await apiConsumer.get(
  EndpointsStrings.salesProfile,
      );
      return Right(response);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }

  }
   @override
  Future <Either<ErrorModel,Banners>> getBanner( ) async{
     try {
       final response = await apiConsumer.get(
         EndpointsStrings.salesBanner,
       );
       return Right(response);
     } on ServerException catch (e) {
       return Left(e.errorModel);
     
   }

      
  }
  
  @override
  Future<Either<ErrorModel, OrderStatusModel>> getOrdersStatus()async {
    try {
      final response = await apiConsumer.get(
        EndpointsStrings.salesOrdersStatus,
      );
      return Right(OrderStatusModel.fromJson(response ));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }}


