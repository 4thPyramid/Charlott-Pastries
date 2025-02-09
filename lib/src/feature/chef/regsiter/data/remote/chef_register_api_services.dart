import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/chef_register_request.dart';

abstract class ChefRegisterApiServices {
  Future<Either<ErrorModel, String>> chefRegister(ChefRegisterRequest request);
}

class ChefRegisterApiServicesImpl extends ChefRegisterApiServices {
  final ApiConsumer api;
  ChefRegisterApiServicesImpl(this.api);

  @override
  Future<Either<ErrorModel, String>> chefRegister(
      ChefRegisterRequest request) async {
    final data = await request.toFormData();
    final formData = FormData.fromMap(data);
    try {
      final response = await api.post(
        EndpointsStrings.chefRegister,
        data: formData,
         headers: {
          'Content-Type': 'multipart/form-data',
        },
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
