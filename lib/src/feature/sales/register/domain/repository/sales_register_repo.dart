import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/sales_register_request.dart';
import '../../data/remote/sales_register_remote_ds.dart';

abstract class SalesRegisterRepo {
  Future<Either<ErrorModel, String>> salesRegister(
      SalesRegisterRequest request);
}


class SalesRegisterRepoImpl extends SalesRegisterRepo {
  final SalesRegisterRemoteDs registerRemoteDs;
  SalesRegisterRepoImpl(this.registerRemoteDs);

  @override
  Future<Either<ErrorModel, String>> salesRegister(SalesRegisterRequest request) async {
    return await registerRemoteDs.salesRegister(request);
  }
}
