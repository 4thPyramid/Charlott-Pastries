import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/chef_register_request.dart';
import 'chef_register_api_services.dart';

abstract class ChefRegisterRemoteDs {
  Future<Either<ErrorModel, String>> chefRegister(
      ChefRegisterRequest request);

}


class ChefRegisterRemoteDsImpl extends ChefRegisterRemoteDs {
  final ChefRegisterApiServices apiServices;
  ChefRegisterRemoteDsImpl(this.apiServices);

  @override
  Future<Either<ErrorModel, String>> chefRegister(
      ChefRegisterRequest request) async {
    return await apiServices.chefRegister(request);
  }
}