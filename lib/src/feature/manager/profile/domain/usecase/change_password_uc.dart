import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repository/profile_repository.dart';

class ChangePasswordUc {
  final ProfileRepository _profileRepository;

  ChangePasswordUc(this._profileRepository);

  Future<Either<ErrorModel, String>> changePassword(
      String? oldPassword, String? newPassword, String? confirmPassword,String userType) async {
    return await _profileRepository.changePassword(
        oldPassword, newPassword, confirmPassword, userType);
  }
}
