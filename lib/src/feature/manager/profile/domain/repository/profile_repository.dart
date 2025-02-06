import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/datasource/profile_remote_ds.dart';
import '../../data/model/profile_model.dart';

abstract class ProfileRepository {
   Future<Either<ErrorModel, ProfileModel>> getProfile();

  Future<Either<ErrorModel, ProfileModel>> updateProfile(
    String? name,
    String? phone,
    String? email,
  );
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(
    File? file,
  );

    Future<Either<ErrorModel, String>> deleteAccount();
      Future<Either<ErrorModel, String>> logout();

  Future<Either<ErrorModel, String>> changePassword(String? oldPassword, String? newPassword, String? confirmPassword);

}


class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDs _profileRemoteDs;
  ProfileRepositoryImpl(this._profileRemoteDs);

  @override
  Future<Either<ErrorModel, ProfileModel>> getProfile() {
    return _profileRemoteDs.getProfile();
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfileImage(File? file) {
    return _profileRemoteDs.updateProfileImage(file);
  }

  @override
  Future<Either<ErrorModel, ProfileModel>> updateProfile(
      String? name, String? phone, String? email) {
    return _profileRemoteDs.updateProfile(name, phone, email);
  }
  
  @override
  Future<Either<ErrorModel, String>> deleteAccount() {
   return _profileRemoteDs.deleteAccount();
  }
  
  @override
  Future<Either<ErrorModel, String>> logout() async {
    return _profileRemoteDs.logout();
  }
  
  @override
  Future<Either<ErrorModel, String>> changePassword(String? oldPassword, String? newPassword, String? confirmPassword) async {
    return _profileRemoteDs.changePassword(oldPassword, newPassword, confirmPassword);
  }
}