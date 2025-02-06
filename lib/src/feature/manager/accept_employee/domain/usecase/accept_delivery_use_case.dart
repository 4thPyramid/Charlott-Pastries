import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/all_employee_repository.dart';

class AcceptDeliveryUseCase {
  final AllEmployeeRepository repository;
  AcceptDeliveryUseCase( this.repository);

  Future<Either<ErrorModel, String>> call(int deliveryId) async {
    return repository.acceptDelivery(deliveryId);
  }
}
