import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/all_employee_response.dart';
import '../../data/remote/all_employee_remote_ds.dart';

abstract class AllEmployeeRepository {
  Future<Either<ErrorModel, AllEmployeeResponse>> getAllEmployee();
   Future<Either<ErrorModel, String>> acceptChef(int chefId);
  Future<Either<ErrorModel, String>> acceptDelivery(int deliveryId);

  Future<Either<ErrorModel, String>> rejectChef(int chefId);
  Future<Either<ErrorModel, String>> rejectDelivery(int deliveryId);
}

class AllEmployeeRepositoryImpl extends AllEmployeeRepository {
  final AllEmployeeRemoteDs remoteDs;

  AllEmployeeRepositoryImpl(this.remoteDs);

  @override
  Future<Either<ErrorModel, AllEmployeeResponse>> getAllEmployee() {
    return remoteDs.getAllEmployee();
  }
  
  @override
  Future<Either<ErrorModel, String>> acceptChef(int chefId) async{
    return remoteDs.acceptChef(chefId);
  }
  
  @override
  Future<Either<ErrorModel, String>> acceptDelivery(int deliveryId) async {
    return remoteDs.acceptDelivery(deliveryId);
  }
  
  @override
  Future<Either<ErrorModel, String>> rejectChef(int chefId) async {
    return remoteDs.rejectChef(chefId);
  }
  
  @override
  Future<Either<ErrorModel, String>> rejectDelivery(int deliveryId) async {
    return remoteDs.rejectDelivery(deliveryId);
  }
} 