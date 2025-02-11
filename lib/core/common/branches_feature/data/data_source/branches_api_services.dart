import 'package:charlot/core/common/branches_feature/data/models/branch_model.dart';
import 'package:charlot/core/constants/endpoints_strings.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class BranchesApiServices {
  Future<Either<ErrorModel, BranchResponse>> getBranches();
}

class BranchesApiServicesImp extends BranchesApiServices {
  final ApiConsumer api;

  BranchesApiServicesImp(this.api);

  @override
  Future<Either<ErrorModel, BranchResponse>> getBranches() async {
    try {
      final response = await api.get(EndpointsStrings.branches);
      final branches = BranchResponse.fromJson((response));
      return Right(branches);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
