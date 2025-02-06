import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/employee_response.dart';
import '../repo/employee_repository.dart';

class GetDeliveryUseCase {
  final EmployeeRepository _employeeRepository;

  GetDeliveryUseCase(this._employeeRepository);

   Future<Either<ErrorModel, EmployeesResponse>> execute()async {
    return _employeeRepository.getDelivery();
  }
}