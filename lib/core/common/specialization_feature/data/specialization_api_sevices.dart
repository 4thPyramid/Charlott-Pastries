import 'package:charlot/core/common/specialization_feature/domain/models/specialization_model.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class SpecializationApiSevices {
  Future <Either<ErrorModel,SpecializationModel>> getSecializations();
}

class SpecializationApiSevicesImp extends SpecializationApiSevices{
  final ApiConsumer api;

  SpecializationApiSevicesImp(this.api);
  
  @override
  Future<Either<ErrorModel, SpecializationModel>> getSecializations()async {
    try {
      final response = await api.get('all-specializations');
      final specializations = SpecializationModel.fromJson((response));
      return Right(specializations);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
  
}