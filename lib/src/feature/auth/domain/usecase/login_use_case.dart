import 'package:charlot/core/errors/error_model.dart';

import 'package:charlot/src/feature/auth/data/model/login_response.dart';

import 'package:dartz/dartz.dart';

import '../repository/auth_repo.dart';

class LoginUseCase {
  final AuthRepo _authRepository;
  LoginUseCase(this._authRepository);
  Future<Either<ErrorModel, LoginResponse>> execute(
      String userType, String identifier, String password) async {
    return await _authRepository.login(userType, identifier, password);
  }
}
