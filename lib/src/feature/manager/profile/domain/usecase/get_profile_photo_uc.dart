import 'package:dartz/dartz.dart';
import '../../../../../../core/errors/error_model.dart';

import '../../data/model/profile_model.dart';
import '../repository/profile_repository.dart';

class GetProfileDataUC {
  final ProfileRepository _profileRepository;

  GetProfileDataUC(this._profileRepository);

  Future<Either<ErrorModel, ProfileModel>> call() {
    return _profileRepository.getProfile();
  }
}
