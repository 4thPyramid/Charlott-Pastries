import 'package:charlot/core/common/branches_feature/data/data_source/branches_api_services.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';
import '../models/branch_model.dart';

abstract class BranchRemoteDataSource {
  Future<Either<ErrorModel,BranchResponse>> getBranches();
}

class BranchesDataSourceImp implements BranchRemoteDataSource {
final BranchesApiServices branchesApiServices;

  BranchesDataSourceImp(this.branchesApiServices);

  @override
  Future<Either<ErrorModel,BranchResponse>> getBranches() {
    return branchesApiServices.getBranches();
  }
}

