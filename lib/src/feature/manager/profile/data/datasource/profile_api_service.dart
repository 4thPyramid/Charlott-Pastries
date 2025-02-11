import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/profile_model.dart';

abstract class ProfileApiService {
  Future<Either<ErrorModel, ProfileModel>> getProfile(String userType);

  Future<Either<ErrorModel, ProfileModel>> updateProfile(
      String? name, String? phone, String? email, String userType);
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(
      File? file, String userType);
  //delete account
  Future<Either<ErrorModel, String>> deleteAccount(String userType);
  Future<Either<ErrorModel, String>> logout(String userType);
  Future<Either<ErrorModel, String>> changePassword(String? oldPassword,
      String? newPassword, String? confirmPassword, String userType);
}

class ProfileApiServiceImpl implements ProfileApiService {
  final ApiConsumer _api;

  ProfileApiServiceImpl(this._api);

  @override
  Future<Either<ErrorModel, ProfileModel>> getProfile(String userType) async {
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerProfile;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesProfile;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefProfile;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await _api.get(endpoint);
      final profile = ProfileModel.fromJson(response);
      return Right(profile);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfile(
      String? name, String? phone, String? email, String userType) async {
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerProfile;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesProfile;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefProfile;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await _api.post(endpoint, data: {
        'first_name': name,
        'phone': phone,
        'email': email,
      });
      final profile = ProfileModel.fromJson(response);
      return Right(profile);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(
      File? file, String userType) async {
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerProfile;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesProfile;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefProfile;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      if (file == null) {
        return Left(ErrorModel(message: "File is null"));
      }

      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        ),
      });

      final response = await _api.post(
        endpoint,
        data: formData,
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      );

      final profile = ProfileModel.fromJson(response);
      return Right(profile);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    } catch (e) {
      return Left(ErrorModel(message: e.toString()));
    }
  }

  @override
  Future<Either<ErrorModel, String>> deleteAccount(String userType) async {
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerDeleteProfile;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesDeleteProfile;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefDeleteProfile;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await _api.delete(endpoint);
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> logout(String userType) async {
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerLogout;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesLogout;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefLogout;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await _api.post(endpoint);
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> changePassword(String? oldPassword,
      String? newPassword, String? confirmPassword, String userType) async {
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerChangePassword;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesChangePassword;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefChangePassword;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await _api.post(endpoint, data: {
        'old_password': oldPassword,
        'new_password': newPassword,
        'new_password_confirmation': confirmPassword,
      });
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
