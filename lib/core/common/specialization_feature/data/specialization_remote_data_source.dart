import 'package:charlot/core/common/specialization_feature/data/specialization_api_sevices.dart';
import 'package:charlot/core/common/specialization_feature/domain/models/specialization_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

abstract class SpecializationRemoteDataSource {
  Future<Either<ErrorModel, SpecializationModel>> getSpecialization();
}

class SpecializationRemoteDataSourceImp implements SpecializationRemoteDataSource {
  final SpecializationApiSevices specializationApiSevices;
  SpecializationRemoteDataSourceImp(this.specializationApiSevices);

  @override
  Future<Either<ErrorModel, SpecializationModel>> getSpecialization() {
    return specializationApiSevices.getSecializations();
  }
}