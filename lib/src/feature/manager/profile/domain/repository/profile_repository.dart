import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/datasource/profile_remote_ds.dart';
import '../../data/model/profile_model.dart';

abstract class ProfileRepository {
  Future<Either<ErrorModel, ProfileModel>> getProfile(String userType);

  Future<Either<ErrorModel, ProfileModel>> updateProfile(
      ProfileModel profile, String userType);
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(
      File? file, String userType);

  Future<Either<ErrorModel, String>> deleteAccount(String userType);
  Future<Either<ErrorModel, String>> logout(String userType);

  Future<Either<ErrorModel, String>> changePassword(String? oldPassword,
      String? newPassword, String? confirmPassword, String userType);
}

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDs _profileRemoteDs;
  ProfileRepositoryImpl(this._profileRemoteDs);

  @override
  Future<Either<ErrorModel, ProfileModel>> getProfile(String userType) {
    return _profileRemoteDs.getProfile(userType);
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(File? file,String userType) {
    return _profileRemoteDs.updateProfileImage(file, userType);
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfile(
      ProfileModel profile,String userType) {
    return _profileRemoteDs.updateProfile( profile, userType);
  }

  @override
  Future<Either<ErrorModel, String>> deleteAccount(String userType) {
    return _profileRemoteDs.deleteAccount( userType);
  }

  @override
  Future<Either<ErrorModel, String>> logout(String userType) async {
    return _profileRemoteDs.logout( userType);
  }

  @override
  Future<Either<ErrorModel, String>> changePassword(
      String? oldPassword, String? newPassword, String? confirmPassword,String userType) async {
    return _profileRemoteDs.changePassword(
        oldPassword, newPassword, confirmPassword,userType);
  }
}
