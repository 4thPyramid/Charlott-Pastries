import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/accept_employee/data/model/all_employee_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/exceptions.dart';

abstract class AllEmployeeApiServices {
  Future<Either<ErrorModel, AllEmployeeResponse>> getAllEmployee();
  Future<Either<ErrorModel, String>> acceptChef(int chefId);
  Future<Either<ErrorModel, String>> acceptDelivery(int deliveryId);

  Future<Either<ErrorModel, String>> rejectChef(int chefId);
  Future<Either<ErrorModel, String>> rejectDelivery(int deliveryId);
}

class AllEmployeeApiServicesImpl extends AllEmployeeApiServices {
  final ApiConsumer api;
  AllEmployeeApiServicesImpl(this.api);
  @override
  Future<Either<ErrorModel, AllEmployeeResponse>> getAllEmployee() async {
    try {
      final response = await api.get(
        EndpointsStrings.managerAllEmployee,
      );
      return Right(AllEmployeeResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> acceptChef(int chefId) async {
    try {
      final response = await api.post(
        EndpointsStrings.managerAcceptChef + chefId.toString(),
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> acceptDelivery(int deliveryId) async {
    try {
      final response = await api.post(
        EndpointsStrings.managerAcceptDelivery + deliveryId.toString(),
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> rejectChef(int chefId) async {
    try {
      final response = await api.post(
        EndpointsStrings.managerRejectChef + chefId.toString(),
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, String>> rejectDelivery(int deliveryId) async {
    try {
      final response = await api.post(
        EndpointsStrings.managerRejectDelivery + deliveryId.toString(),
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
