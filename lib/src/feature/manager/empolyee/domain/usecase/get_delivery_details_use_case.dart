import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/delivery_details_response.dart';
import '../repo/employee_repository.dart';

class GetDeliveryDetailsUseCase {
  final EmployeeRepository _employeeRepository;

  GetDeliveryDetailsUseCase(this._employeeRepository);

   Future<Either<ErrorModel,DeliveryDetails >> execute(int id)async {
    return _employeeRepository.getDeliveryDetails(id);
  }
}