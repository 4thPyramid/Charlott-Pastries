import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/all_employee_repository.dart';

class RejectDeliveryUseCase {
  final AllEmployeeRepository repository;
  RejectDeliveryUseCase(this.repository);

  Future<Either<ErrorModel, String>> call(int deliveryId) async {
    return repository.rejectDelivery(deliveryId);
  }
}
