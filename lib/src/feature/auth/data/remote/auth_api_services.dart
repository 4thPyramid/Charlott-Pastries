import 'package:charlot/src/feature/auth/data/model/login_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/constants/endpoints_strings.dart';
import '../../../../../core/data/api/api_consumer.dart';
import '../../../../../core/data/cached/cache_helper.dart';
import '../../../../../core/errors/error_model.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/fcm_token/logic/send_fcm_token_cubit.dart';
import '../../../../../core/services/service_locator.dart';
import '../../../../../core/utils/notifications_configration.dart';

abstract class AuthApiServices {
  Future<Either<ErrorModel, LoginResponse>> login(
      String userType, String identifier, String password);

  Future<Either<ErrorModel, String>> forgetPassword(
      String userType, String identifier);

  Future<Either<ErrorModel, String>> verifyResetCode(
      String userType, String otp, String identifier);
  Future<Either<ErrorModel, String>> resetPassword(
      String userType, String otp, String password, String identifier);
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
  Future<Either<ErrorModel, LoginResponse>> login(
      String userType, String identifier, String password) async {
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
      final userResponse = LoginResponse.fromJson(response);
      CacheHelper.saveToken(value: userResponse.token);
      CacheHelper.saveData(
          key: 'name',
          value:
              '${userResponse.user.firstName}  ${userResponse.user.lastName}');
      CacheHelper.saveData(
          key: 'image', value: userResponse.user.image.toString());

      await initializeFcmAndLocalNotifications();

      final fcmToken = await CacheHelper.getData(
        key: 'fcm_token',
      );
      await getIt<StoreFcmTokenCubit>().storeToken(fcmToken);

      return Right(userResponse);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> forgetPassword(
      String userType, String identifier) async {
    String endpoint;
    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerForgotPassword;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesForgotPassword;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefForgotPassword;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response =
          await api.post(endpoint, data: {'identifier': identifier});
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> verifyResetCode(
      String userType, String otp, String identifier) async {
    String endpoint;
    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerVerifyResetCode;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesVerifyResetCode;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefVerifyResetCode;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await api
          .post(endpoint, data: {'code': otp, 'identifier': identifier});
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> resetPassword(
      String userType, String otp, String password, String identifier) async {
    String endpoint;
    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerResetPassword;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesResetPassword;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefResetPassword;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await api.post(endpoint,
          data: {'code': otp, 'password': password, 'identifier': identifier});
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
