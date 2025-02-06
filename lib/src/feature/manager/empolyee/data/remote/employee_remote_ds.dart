import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/chef_details_response.dart';
import '../model/delivery_details_response.dart';
import '../model/employee_response.dart';
import 'get_employee_api_services.dart';

abstract class EmployeeRemoteDs {
   Future<Either<ErrorModel, EmployeesResponse>> getChef();
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery();
  Future<Either<ErrorModel, ChefDetails>> getChefDetails(int id);
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id);
  
  Future<Either<ErrorModel, String>> selectChef(int chefId, int orderId);
  Future<Either<ErrorModel, String>> selectDelivery(int deliveryId, int orderId);
}

class EmployeeRemoteDsImpl extends EmployeeRemoteDs {
  final EmployeeApiServices api;
  EmployeeRemoteDsImpl(this.api);
  @override
  Future<Either<ErrorModel, EmployeesResponse>> getChef() async {
    return api.getChef();
  }

  @override
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery() async {
    return api.getDelivery();
  }
  
  @override
  Future<Either<ErrorModel, ChefDetails>> getChefDetails(int id)async {
    return api.getChefDetails(id);
  }
  
  @override
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id) async {
    return api.getDeliveryDetails(id);
  }
  
  @override
  Future<Either<ErrorModel, String>> selectChef(int chefId, int orderId) async {
    return api.selectChef(chefId, orderId);
  }
  
  @override
    Future<Either<ErrorModel, String>> selectDelivery(int deliveryId, int orderId) async {
    return api.selectDelivery(deliveryId, orderId);
  }
}