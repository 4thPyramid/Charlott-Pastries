import 'package:charlot/core/common/new_orders_features/data/model/new_orders_model.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class NewOrdersApiServcies {
  Future<Either<ErrorModel,NewOrderModel>> getNewOrders();
}

class NewOrdersApiServciesImp implements NewOrdersApiServcies {
  final ApiConsumer api ;
  NewOrdersApiServciesImp(this.api);
  @override
  Future<Either<ErrorModel, NewOrderModel>> getNewOrders()async{
  try{
    final response = await api.get('new-orders');
    final newOrders = NewOrderModel.fromJson((response));
    return Right(newOrders);
  } on ServerException catch (e) {
      return Left(e.errorModel);
    }

  }
}