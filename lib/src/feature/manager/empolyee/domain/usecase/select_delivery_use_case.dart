import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/employee_repository.dart';

class SelectDeliveryUseCase {
  final EmployeeRepository _deliveryRepository;

  SelectDeliveryUseCase(this._deliveryRepository);

  Future<Either<ErrorModel, String>> selectDelivery(int deliveryId ,int orderId) async {
    return _deliveryRepository.selectDelivery(deliveryId, orderId);
  }
}