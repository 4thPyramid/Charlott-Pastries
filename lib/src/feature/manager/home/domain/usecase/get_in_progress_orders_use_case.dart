import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/in_progress_order_response.dart';
import '../repository/home_repository.dart';

class GetInProgressOrdersUseCase {
  final HomeRepository _repository;
  GetInProgressOrdersUseCase(this._repository);

 Future<Either<ErrorModel, InProgressOrderResponse>> call() async {
    return await _repository.getInProgressOrder();
  }
  
}