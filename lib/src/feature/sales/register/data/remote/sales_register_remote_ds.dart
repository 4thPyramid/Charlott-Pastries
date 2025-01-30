import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/sales_register_request.dart';
import 'sales_register_api_serivces.dart';

abstract class SalesRegisterRemoteDs {


   Future<Either<ErrorModel, String>> salesRegister(
      SalesRegisterRequest request);

}

class SalesRegisterRemoteDsImpl extends SalesRegisterRemoteDs {
  final SalesRegisterApiServices apiServices;
  SalesRegisterRemoteDsImpl(this.apiServices);

  @override
  Future<Either<ErrorModel, String>> salesRegister(
      SalesRegisterRequest request) async {
    return await apiServices.salesRegister(request);
  }
}