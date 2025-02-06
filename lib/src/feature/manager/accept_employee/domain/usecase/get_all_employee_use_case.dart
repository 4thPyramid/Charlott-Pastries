import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/all_employee_response.dart';
import '../repo/all_employee_repository.dart';

class GetAllEmployeeUseCase {
  final AllEmployeeRepository _allEmployeeRepository;
  const GetAllEmployeeUseCase(this._allEmployeeRepository);

   Future<Either<ErrorModel, AllEmployeeResponse>> getAllEmployee()async {
    return _allEmployeeRepository.getAllEmployee();
  
}
}