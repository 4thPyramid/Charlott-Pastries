import 'package:charlot/src/feature/manager/accept_employee/domain/repo/all_employee_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';

class AcceptChefUseCase {
  final AllEmployeeRepository repository;
  AcceptChefUseCase( this.repository);

  Future<Either<ErrorModel, String>> call(int chefId) async {
    return repository.acceptChef(chefId);
  }
}
