import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/order_status_repository.dart';

class StartOrderUseCase {
  final  OrderStatusRepository repository;

  StartOrderUseCase( this.repository);

   Future<Either<ErrorModel, String>> orderStart(int orderId)async{
    return await repository.startOrder(orderId);
   }
}