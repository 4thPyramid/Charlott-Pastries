import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/chef_details_response.dart';
import '../repo/employee_repository.dart';

class GetChefDetailsUseCase {
  final EmployeeRepository _employeeRepository;

  GetChefDetailsUseCase(this._employeeRepository);

   Future<Either<ErrorModel, ChefDetails>> execute(int id)async {
    return _employeeRepository.getChefDetails(id);
  }
}