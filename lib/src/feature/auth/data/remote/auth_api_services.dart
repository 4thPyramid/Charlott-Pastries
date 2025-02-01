import 'package:charlot/src/feature/auth/data/model/login_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/constants/endpoints_strings.dart';
import '../../../../../core/data/api/api_consumer.dart';
import '../../../../../core/errors/error_model.dart';
import '../../../../../core/errors/exceptions.dart';

abstract class AuthApiServices {
   Future<Either<ErrorModel, LoginResponse>> login(String userType,String identifier, String password);

  ///Future<Either<ErrorModel, String>> register(String email, String password);

  Future<Either<ErrorModel, String>> verifyEmail(String userType, String otp);
}

class AuthApiServicesImpl extends AuthApiServices {
  final ApiConsumer api;
  AuthApiServicesImpl(this.api);

  @override
  Future<Either<ErrorModel, String>> verifyEmail(
      String userType, String otp) async {
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerVerifyEmail;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesVerifyEmail;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefVerifyEmail;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }

    try {
      final response = await api.post(endpoint, data: {'code': otp});
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, LoginResponse>> login(String userType, String identifier, String password) async{
     String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerLogin;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesLogin;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefLogin;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
     try {
      final response = await api.post(endpoint, data: {
        'login': identifier,
        'password': password,
      });
      return Right(response);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }

  }
}
