import 'package:dartz/dartz.dart';

import '../../../../../core/errors/error_model.dart';
import '../../data/model/login_response.dart';
import '../../data/remote/auth_remote_ds.dart';

abstract class AuthRepo {
  Future<Either<ErrorModel, String>> verifyEmail(String userType, String otp);
   Future<Either<ErrorModel, LoginResponse>> login(String userType,String identifier, String password);

}

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDs remoteDs;
  AuthRepoImpl(this.remoteDs);
  @override
  Future<Either<ErrorModel, String>> verifyEmail(String userType, String otp) {
 return remoteDs.verifyEmail(userType, otp);
 
  }
  
  @override
  Future<Either<ErrorModel, LoginResponse>> login(String userType, String identifier, String password) {
   return remoteDs.login(userType, identifier, password);
  }
}
 