import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../../data/model/login_response.dart';
import '../../data/remote/auth_remote_ds.dart';

abstract class AuthRepo {
  Future<Either<ErrorModel, String>> verifyEmail(String userType, String otp);
  Future<Either<ErrorModel, LoginResponse>> login(
      String userType, String identifier, String password);

  Future<Either<ErrorModel, String>> forgetPassword(
      String userType, String identifier);

  Future<Either<ErrorModel, String>> verifyResetCode(
      String userType, String otp, String identifier);
  Future<Either<ErrorModel, String>> resetPassword(
      String userType, String otp, String password, String identifier);
}

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDs remoteDs;
  AuthRepoImpl(this.remoteDs);
  @override
  Future<Either<ErrorModel, String>> verifyEmail(String userType, String otp) {
    return remoteDs.verifyEmail(userType, otp);
  }

  @override
  Future<Either<ErrorModel, LoginResponse>> login(
      String userType, String identifier, String password) {
    return remoteDs.login(userType, identifier, password);
  }
  
  @override
  Future<Either<ErrorModel, String>> forgetPassword(String userType, String identifier) async {
    return await remoteDs.forgetPassword(userType, identifier);
  }
  
  @override
  Future<Either<ErrorModel, String>> resetPassword(String userType, String otp, String password, String identifier) async {
    return await remoteDs.resetPassword(userType, otp, password, identifier);
  }
  
  @override
  Future<Either<ErrorModel, String>> verifyResetCode(String userType, String otp, String identifier) async {
    return await remoteDs.verifyResetCode(userType, otp, identifier);
  }
}
