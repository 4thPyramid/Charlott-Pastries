import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/all_employee_response.dart';
import 'all_employee_api_services.dart';

abstract class AllEmployeeRemoteDs {
    Future<Either<ErrorModel, AllEmployeeResponse>> getAllEmployee();
 Future<Either<ErrorModel, String>> acceptChef(int chefId);
  Future<Either<ErrorModel, String>> acceptDelivery(int deliveryId);

  Future<Either<ErrorModel, String>> rejectChef(int chefId);
  Future<Either<ErrorModel, String>> rejectDelivery(int deliveryId);
}

class AllEmployeeRemoteDsImpl extends AllEmployeeRemoteDs {
final AllEmployeeApiServices api;
AllEmployeeRemoteDsImpl(this.api);

  @override
  Future<Either<ErrorModel, AllEmployeeResponse>> getAllEmployee() {
    return api.getAllEmployee();
  }
  
  @override
  Future<Either<ErrorModel, String>> acceptChef(int chefId) async {
    return api.acceptChef(chefId);
  }
  
  @override
  Future<Either<ErrorModel, String>> acceptDelivery(int deliveryId) async {
    return api.acceptDelivery(deliveryId);
  }
  
  @override
  Future<Either<ErrorModel, String>> rejectChef(int chefId) async {
    return api.rejectChef(chefId);
  }
  
  @override
  Future<Either<ErrorModel, String>> rejectDelivery(int deliveryId) async{
    return api.rejectDelivery(deliveryId);
  }
}