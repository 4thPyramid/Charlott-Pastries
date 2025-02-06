import 'package:charlot/src/feature/manager/empolyee/domain/repo/employee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/employee_response.dart';

class GetChefUseCase {
  final EmployeeRepository _employeeRepository;

  GetChefUseCase(this._employeeRepository);

   Future<Either<ErrorModel, EmployeesResponse>> execute()async {
    return _employeeRepository.getChef();
  }
}