import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../model/login_response.dart';
import 'auth_api_services.dart';

abstract class AuthRemoteDs {
  Future<Either<ErrorModel, String>> verifyEmail(String userType, String otp);
   Future<Either<ErrorModel, LoginResponse>> login(String userType,String identifier, String password);

}

class AuthRemoteDsImpl extends AuthRemoteDs {
  final AuthApiServices apiServices;
  AuthRemoteDsImpl(this.apiServices);

  @override
  Future<Either<ErrorModel, String>> verifyEmail(
      String userType, String otp) async {
    return await apiServices.verifyEmail(userType, otp);
  }
  
  @override
  Future<Either<ErrorModel, LoginResponse>> login(String userType, String identifier, String password) {
    return apiServices.login(userType, identifier, password);
  }
}