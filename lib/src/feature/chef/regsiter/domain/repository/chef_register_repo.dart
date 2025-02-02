import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/chef_register_request.dart';
import '../../data/remote/chef_register_remote_ds.dart';

abstract class ChefRegisterRepo {
  
  Future<Either<ErrorModel, String>> chefRegister(ChefRegisterRequest request);
}


class ChefRegisterRepoImpl extends ChefRegisterRepo {
  final ChefRegisterRemoteDs registerRemoteDs;
  ChefRegisterRepoImpl(this.registerRemoteDs);

  @override
  Future<Either<ErrorModel, String>> chefRegister(ChefRegisterRequest request) async {
    return await registerRemoteDs.chefRegister(request);
  }
}