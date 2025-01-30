import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/sales_register_request.dart';
import '../repository/sales_register_repo.dart';

class SalesRegisterUseCase {
  final SalesRegisterRepo _repository;

  SalesRegisterUseCase(this._repository);

  Future<Either<ErrorModel, String>> execute(SalesRegisterRequest request) {
    return _repository.salesRegister(request);
  }
}