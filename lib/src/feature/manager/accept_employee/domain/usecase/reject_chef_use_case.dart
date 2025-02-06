import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/all_employee_repository.dart';

class RejectChefUseCase {
  final AllEmployeeRepository repository;
  RejectChefUseCase(this.repository);

  Future<Either<ErrorModel, String>> call(int chefId) async {
    return repository.rejectChef(chefId);
  }
}
