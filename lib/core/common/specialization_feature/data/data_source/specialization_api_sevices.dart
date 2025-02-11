import 'package:charlot/core/common/specialization_feature/data/models/specialization_model.dart';
import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class SpecializationApiServices {
  Future <Either<ErrorModel,SpecializationResponse>> getSpecialization();
}

class SpecializationApiServicesImp extends SpecializationApiServices{
  final ApiConsumer api;

  SpecializationApiServicesImp(this.api);
  
  @override
  Future<Either<ErrorModel, SpecializationResponse>> getSpecialization()async {
    try {
      final response = await api.get(EndpointsStrings.specialization);
      final specializations = SpecializationResponse.fromJson((response));
      return Right(specializations);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
}