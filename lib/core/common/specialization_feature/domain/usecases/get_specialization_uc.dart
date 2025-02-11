import 'package:charlot/core/common/specialization_feature/data/models/specialization_model.dart';
import 'package:charlot/core/common/specialization_feature/domain/repo/specialization_repo.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

class GetSpecializationUc {
  final SpecializationRepo specializationRepo;
  GetSpecializationUc(this.specializationRepo);

  Future <Either<ErrorModel, SpecializationResponse>> call()async{
    return await specializationRepo.getSpecialization();
  }
}