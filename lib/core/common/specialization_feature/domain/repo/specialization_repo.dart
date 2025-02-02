import 'package:charlot/core/common/specialization_feature/data/data_source/specialization_remote_data_source.dart';
import 'package:charlot/core/common/specialization_feature/data/models/specialization_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';


abstract class SpecializationRepo {
  Future<Either<ErrorModel, SpecializationModel>> getSpecialization();
}

class SpecializationRepoImp implements SpecializationRepo {

  final SpecializationRemoteDataSource specializationRemoteDataSource;

  SpecializationRepoImp(this.specializationRemoteDataSource);

  @override
  Future<Either<ErrorModel, SpecializationModel>> getSpecialization() {
    return specializationRemoteDataSource.getSpecialization();
  }
  
}