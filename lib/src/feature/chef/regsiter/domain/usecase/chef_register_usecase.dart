import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/chef_register_request.dart';
import '../repository/chef_register_repo.dart';

class ChefRegisterUseCase {

  final ChefRegisterRepo _repository;

  ChefRegisterUseCase(this._repository);

  Future<Either<ErrorModel, String>> execute(ChefRegisterRequest request) async {
    return await _repository.chefRegister(request);
  }

}