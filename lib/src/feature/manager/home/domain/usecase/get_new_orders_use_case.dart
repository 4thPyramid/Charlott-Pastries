import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/newest_orders_response.dart';
import '../repository/home_repository.dart';

class GetNewOrdersUseCase {
final HomeRepository homeRepository;
GetNewOrdersUseCase(this.homeRepository);

Future<Either<ErrorModel, NewestOrdersResponse>> call() async {
return homeRepository.getNewOrder();
}

}