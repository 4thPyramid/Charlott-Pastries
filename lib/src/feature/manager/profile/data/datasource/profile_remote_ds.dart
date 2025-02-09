import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/profile_model.dart';
import 'profile_api_service.dart';

abstract class ProfileRemoteDs {
  Future<Either<ErrorModel, ProfileModel>> getProfile(String userType);

  Future<Either<ErrorModel, ProfileModel>> updateProfile(
      String? name, String? phone, String? email, String userType);
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(
      File? file, String userType);
  Future<Either<ErrorModel, String>> deleteAccount(String userType);
  Future<Either<ErrorModel, String>> logout(String userType);

  Future<Either<ErrorModel, String>> changePassword(String? oldPassword,
      String? newPassword, String? confirmPassword, String userType);
}

class ProfileRemoteDSImpl implements ProfileRemoteDs {
  final ProfileApiService _profileApiService;
  ProfileRemoteDSImpl(this._profileApiService);

  @override
  Future<Either<ErrorModel, ProfileModel>> getProfile(String userType) {
    return _profileApiService.getProfile(userType);
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(
      File? file, String userType) {
    return _profileApiService.updateProfileImage(file, userType);
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfile(
      String? name, String? phone, String? email, String userType) {
    return _profileApiService.updateProfile(name, phone, email, userType);
  }

  @override
  Future<Either<ErrorModel, String>> deleteAccount(String userType) {
    return _profileApiService.deleteAccount(userType);
  }

  @override
  Future<Either<ErrorModel, String>> logout(String userType) async {
    return _profileApiService.logout(userType);
  }

  @override
  Future<Either<ErrorModel, String>> changePassword(String? oldPassword,
      String? newPassword, String? confirmPassword, String userType) async {
    return _profileApiService.changePassword(
        oldPassword, newPassword, confirmPassword, userType);
  }
}
