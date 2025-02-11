import 'package:charlot/core/common/specialization_feature/data/data_source/specialization_api_sevices.dart';
import 'package:charlot/core/common/specialization_feature/data/models/specialization_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

abstract class SpecializationRemoteDataSource {
  Future<Either<ErrorModel, SpecializationResponse>> getSpecialization();
}

class SpecializationRemoteDataSourceImp implements SpecializationRemoteDataSource {
  final SpecializationApiServices specializationApiServices;
  SpecializationRemoteDataSourceImp(this.specializationApiServices);

  @override
  Future<Either<ErrorModel, SpecializationResponse>> getSpecialization() {
    return specializationApiServices.getSpecialization();
  }
}