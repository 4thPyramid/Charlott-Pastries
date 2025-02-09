import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/order_status_repository.dart';

class DoneOrderUseCase {
  final  OrderStatusRepository repository;

  DoneOrderUseCase( this.repository);

   Future<Either<ErrorModel, String>> orderDone(int orderId)async{
    return await repository.orderDone(orderId);
   }
}
