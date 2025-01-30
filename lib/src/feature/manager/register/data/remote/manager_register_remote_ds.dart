import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/manager_register_request.dart';
import 'manager_register_api_serivces.dart';

abstract class ManagerRegisterRemoteDs {
  Future<Either<ErrorModel, String>> managerRegister(
      ManagerRegisterRequest request);

}


class ManagerRegisterRemoteDsImpl extends ManagerRegisterRemoteDs {
  final ManagerRegisterApiServices apiServices;
  ManagerRegisterRemoteDsImpl(this.apiServices);

  @override
  Future<Either<ErrorModel, String>> managerRegister(
      ManagerRegisterRequest request) async {
    return await apiServices.managerRegister(request);
  }
}