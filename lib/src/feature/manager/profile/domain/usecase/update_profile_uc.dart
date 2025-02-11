import 'package:dartz/dartz.dart';
import '../../../../../../core/errors/error_model.dart';

import '../../data/model/profile_model.dart';
import '../repository/profile_repository.dart';

class UpdateProfileUc {
  final ProfileRepository _profileRepository;

  UpdateProfileUc(this._profileRepository);

  Future<Either<ErrorModel, ProfileModel>> call(
    ProfileModel profile,String userType
  ) {
    return _profileRepository.updateProfile( profile, userType);
  }
}
