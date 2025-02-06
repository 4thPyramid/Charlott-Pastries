import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/register/data/model/manager_register_request.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/exceptions.dart';

abstract class ManagerRegisterApiServices {
  Future<Either<ErrorModel, String>> managerRegister(
      ManagerRegisterRequest request);
}

class ManagerRegisterApiServicesImpl extends ManagerRegisterApiServices {
  final ApiConsumer api;
  ManagerRegisterApiServicesImpl(this.api);

  @override
  Future<Either<ErrorModel, String>> managerRegister(
      ManagerRegisterRequest request) async {
    final data = await request.toFormData();
    final formData = FormData.fromMap(data);
    try {
      final response = await api.post(
        EndpointsStrings.managerRegister,
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
