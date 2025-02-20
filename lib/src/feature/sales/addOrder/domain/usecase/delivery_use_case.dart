import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../../../manager/empolyee/data/model/delivery_details_response.dart';
import '../../../../manager/empolyee/data/model/employee_response.dart';
import '../repo/add_order_repo.dart';

class SalesGetDeliveryUseCase {
  final AddOrderRepo _employeeRepository;

  SalesGetDeliveryUseCase(this._employeeRepository);

  Future<Either<ErrorModel, EmployeesResponse>> execute() async {
    return _employeeRepository.getDelivery();
  }
}

  class SalesSelectDeliveryUseCase {
  final AddOrderRepo _deliveryRepository;

  SalesSelectDeliveryUseCase(this._deliveryRepository);

  Future<Either<ErrorModel, String>> selectDelivery(
      int deliveryId, int branchId, int orderId) async {
    return _deliveryRepository.selectDelivery(deliveryId,branchId ,orderId);
  }
}

class SalesGetDeliveryDetailsUseCase {
  final AddOrderRepo _employeeRepository;

  SalesGetDeliveryDetailsUseCase(this._employeeRepository);

  Future<Either<ErrorModel, DeliveryDetails>> execute(int id) async {
    return _employeeRepository.getDeliveryDetails(id);
  }
}
