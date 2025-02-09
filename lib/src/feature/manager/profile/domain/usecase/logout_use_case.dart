
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../repository/profile_repository.dart';

class LogoutUseCase {
  final ProfileRepository _profileRepository;

  LogoutUseCase(this._profileRepository);

  Future<Either<ErrorModel, String>> call(String userType) {
    return _profileRepository.logout( userType);
  }
}
