
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/order_status_repository.dart';

class ChefAcceptOrderUseCase {
  final  OrderStatusRepository repository;

  ChefAcceptOrderUseCase( this.repository);

   Future<Either<ErrorModel, String>> orderAccept(int orderId)async{
    return await repository.acceptOrder(orderId);
   }
}