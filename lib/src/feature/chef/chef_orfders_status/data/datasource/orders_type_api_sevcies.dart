import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/models/orders_type_model.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersTypeApiSevcies {
  Future <Either<ErrorModel, List<OrdersTypeModel>>> getNewOrders();
  Future <Either<ErrorModel,List<OrdersTypeModel>>>  getCompletedOrders();
  Future <Either<ErrorModel,List<OrdersTypeModel>>>  getAccepteddOrders();
  Future <Either<ErrorModel,List<OrdersTypeModel>>>  getPendingOrders();
}

class OrdersTypeApiSevciesImp implements OrdersTypeApiSevcies {
  final ApiConsumer api;

  OrdersTypeApiSevciesImp(this.api);
 @override
Future<Either<ErrorModel, List<OrdersTypeModel>>> getNewOrders() async {
  try {
    final response = await api.get('chef/new-orders');

    final ordersType = (response as List<dynamic>)
        .map((e) => OrdersTypeModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return Right(ordersType);
  } on ServerException catch (e) {
    return Left(e.errorModel);
  }
}

  @override
  Future<Either<ErrorModel, List<OrdersTypeModel>>>  getCompletedOrders()async {
    try {
      final response = await api.get('chef/completed-orders');
       final ordersType = (response as List<dynamic>)
        .map((e) => OrdersTypeModel.fromJson(e as Map<String, dynamic>))
        .toList();
      return Right(ordersType);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, List<OrdersTypeModel>>>  getAccepteddOrders()async {
    try{
      final response = await api.get('chef/accepted-orders');
     final ordersType = (response as List<dynamic>)
        .map((e) => OrdersTypeModel.fromJson(e as Map<String, dynamic>))
        .toList();
      return Right(ordersType);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, List<OrdersTypeModel>>>  getPendingOrders() async{
   try{
      final response = await api.get('chef/pending-orders');
      final ordersType = (response as List<dynamic>)
        .map((e) => OrdersTypeModel.fromJson(e as Map<String, dynamic>))
        .toList();
      return Right(ordersType);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

}