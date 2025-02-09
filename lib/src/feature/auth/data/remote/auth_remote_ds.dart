import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../model/login_response.dart';
import 'auth_api_services.dart';

abstract class AuthRemoteDs {
   Future<Either<ErrorModel, LoginResponse>> login(
      String userType, String identifier, String password);
  Future<Either<ErrorModel, String>> verifyEmail(String userType, String otp);
  Future<Either<ErrorModel, String>> forgetPassword(
      String userType, String identifier);

  Future<Either<ErrorModel, String>> verifyResetCode(
      String userType, String otp, String identifier);
  Future<Either<ErrorModel, String>> resetPassword(
      String userType, String otp, String password, String identifier);
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
  Future<Either<ErrorModel, LoginResponse>> login(
      String userType, String identifier, String password) {
    return apiServices.login(userType, identifier, password);
  }
  
  @override
  Future<Either<ErrorModel, String>> forgetPassword(String userType, String identifier) async {
    return await apiServices.forgetPassword(userType, identifier);
  }
  
  @override
  Future<Either<ErrorModel, String>> resetPassword(String userType, String otp, String password, String identifier) async {
    return await apiServices.resetPassword(userType, otp, password, identifier);
  }
  
  @override
  Future<Either<ErrorModel, String>> verifyResetCode(String userType, String otp, String identifier) async {
    return await apiServices.verifyResetCode(userType, otp, identifier);
  }
}
