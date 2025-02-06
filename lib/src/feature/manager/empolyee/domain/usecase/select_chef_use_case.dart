import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repo/employee_repository.dart';

class SelectChefUseCase {
  final EmployeeRepository _chefRepository;

  SelectChefUseCase(this._chefRepository);

  Future<Either<ErrorModel, String>> selectChef(int chefId ,int orderId) async {
    return _chefRepository.selectChef(chefId, orderId);
  }
}