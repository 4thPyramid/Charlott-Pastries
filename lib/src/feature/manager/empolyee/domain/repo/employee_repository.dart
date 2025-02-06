import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/chef_details_response.dart';
import '../../data/model/delivery_details_response.dart';
import '../../data/model/employee_response.dart';
import '../../data/remote/employee_remote_ds.dart';

abstract class EmployeeRepository {
  Future<Either<ErrorModel, EmployeesResponse>> getChef();
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery();
  
  Future<Either<ErrorModel, ChefDetails>> getChefDetails(int id);
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id);

  
  Future<Either<ErrorModel, String>> selectChef(int chefId, int orderId);
  Future<Either<ErrorModel, String>> selectDelivery(int deliveryId, int orderId);
}

class EmployeeRepositoryImpl extends EmployeeRepository {
  final EmployeeRemoteDs remoteDs;
  EmployeeRepositoryImpl(this.remoteDs);
  @override
  Future<Either<ErrorModel, EmployeesResponse>> getChef() async {
    return remoteDs.getChef();
  }

  @override
  Future<Either<ErrorModel, EmployeesResponse>> getDelivery() async {
    return remoteDs.getDelivery();
  }
  
  @override
  Future<Either<ErrorModel, ChefDetails>> getChefDetails(int id) async {
    return remoteDs.getChefDetails(id);
  }
  
  @override
  Future<Either<ErrorModel, DeliveryDetails>> getDeliveryDetails(int id) async {
    return remoteDs.getDeliveryDetails(id);
  }
  
  @override
  Future<Either<ErrorModel, String>> selectChef(int chefId, int orderId) async {
    return remoteDs.selectChef(chefId, orderId);
  }
  
  @override
  Future<Either<ErrorModel, String>> selectDelivery(int deliveryId, int orderId) async {
    return remoteDs.selectDelivery(deliveryId, orderId);
  }
}