import 'package:charlot/src/feature/manager/register/data/model/manager_register_request.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repository/manager_register_repo.dart';

class ManagerRegisterUseCase {

  final ManagerRegisterRepo _repository;

  ManagerRegisterUseCase(this._repository);

  Future<Either<ErrorModel, String>> execute(ManagerRegisterRequest request) async {
    return await _repository.managerRegister(request);
  }

}