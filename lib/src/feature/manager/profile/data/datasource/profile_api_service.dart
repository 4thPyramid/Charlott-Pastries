import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/profile_model.dart';

abstract class ProfileApiService {
  Future<Either<ErrorModel, ProfileModel>> getProfile();
 
  Future<Either<ErrorModel, ProfileModel>> updateProfile(
    String? name,
    String? phone,
    String? email,
  );
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(
    File? file,
  );
  //delete account
  Future<Either<ErrorModel, String>> deleteAccount();
  Future<Either<ErrorModel, String>> logout();
  Future<Either<ErrorModel, String>> changePassword(String? oldPassword, String? newPassword, String? confirmPassword);
 
}


class ProfileApiServiceImpl implements ProfileApiService {
  final ApiConsumer _api;

  ProfileApiServiceImpl(this._api);

  @override
  Future<Either<ErrorModel, ProfileModel>> getProfile() async {
    try {
      final response = await _api.get(EndpointsStrings.managerProfile
       
      );
      final profile = ProfileModel.fromJson(response);
      return Right(profile);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfile(
    String? name,
    String? phone,
    String? email,
  ) async {
    try {
      final response = await _api.put(EndpointsStrings.managerProfile, data: {
        'name': name,
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
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(File? file) async {
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

      final response = await _api.put(
        EndpointsStrings.managerProfile,
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
  Future<Either<ErrorModel, String>> deleteAccount() async {
    try {
      final response = await _api.delete(EndpointsStrings.managerDeleteProfile);
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
  @override
  Future<Either<ErrorModel, String>> logout() async {
  try {
      final response = await _api.delete(EndpointsStrings.managerLogout);
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }

}

  @override
  Future<Either<ErrorModel, String>> changePassword(String? oldPassword, String? newPassword, String? confirmPassword)async {
    try {
      final response = await _api.post(EndpointsStrings.managerChangePassword,
       data: {
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