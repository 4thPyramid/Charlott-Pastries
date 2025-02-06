import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/chef_details_response.dart';
import '../model/delivery_details_response.dart';
import '../model/employee_response.dart';

abstract class EmployeeApiServices {
  Future<Either<ErrorModel, EmployeesResponse>> getChef();
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery();

  Future<Either<ErrorModel, ChefDetails>> getChefDetails(int id);
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id);

  Future<Either<ErrorModel, String>> selectChef(int chefId, int orderId);
  Future<Either<ErrorModel, String>> selectDelivery(int deliveryId, int orderId);
}

class EmployeeApiServicesImpl extends EmployeeApiServices {
  final ApiConsumer api;
  EmployeeApiServicesImpl(this.api);
  @override
  Future<Either<ErrorModel, EmployeesResponse>> getChef() async {
    try {
      final response = await api.get(
        EndpointsStrings.managerChef,
      );
      return Right(EmployeesResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery() async {
    try {
      final response = await api.get(
        EndpointsStrings.managerDelivery,
      );
      return Right(EmployeesResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, ChefDetails>> getChefDetails(int id) async {
    try {
      final response = await api.get(
        EndpointsStrings.managerChefDetails + id.toString(),
      );
      return Right(ChefDetails.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id) async {
    try {
      final response = await api.get(
        EndpointsStrings.managerDeliveryDetails + id.toString(),
      );
      return Right(DeliveryDetails.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
 @override
   Future<Either<ErrorModel, String>> selectChef(int chefId, int orderId)async {
    try {
      final response = await api.post(
        EndpointsStrings.managerSelectChef,
        data: {
          'chef_id': chefId,
          'order_id': orderId,
        },
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    } 
    
}
 @override
 Future<Either<ErrorModel, String>> selectDelivery(int deliveryId, int orderId)async {
    try {
      final response = await api.post(
        EndpointsStrings.managerSelectDelivery,
        data: {
          'delivery_id': deliveryId,
          'order_id': orderId,
        },
      );
      return Right(response['message']);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    } 
}
}
