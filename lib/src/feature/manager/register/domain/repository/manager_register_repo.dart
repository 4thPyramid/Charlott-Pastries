import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/manager_register_request.dart';
import '../../data/remote/manager_register_remote_ds.dart';

abstract class ManagerRegisterRepo {
  
  Future<Either<ErrorModel, String>> managerRegister(ManagerRegisterRequest request);
}


class ManagerRegisterRepoImpl extends ManagerRegisterRepo {
  final ManagerRegisterRemoteDs registerRemoteDs;
  ManagerRegisterRepoImpl(this.registerRemoteDs);

  @override
  Future<Either<ErrorModel, String>> managerRegister(ManagerRegisterRequest request) async {
    return await registerRemoteDs.managerRegister(request);
  }
}