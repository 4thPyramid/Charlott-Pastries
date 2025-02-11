import 'package:charlot/core/common/branches_feature/data/data_source/branches_data_source.dart';
import 'package:charlot/core/common/branches_feature/data/models/branch_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

abstract class BranchesRepo {
  Future<Either<ErrorModel, BranchResponse>> getBranches();
}

class BranchesRepoImp extends BranchesRepo {
  final BranchRemoteDataSource branchRemoteDataSource;

  BranchesRepoImp(this.branchRemoteDataSource);
  
  @override
  Future<Either<ErrorModel, BranchResponse>> getBranches() {
    return branchRemoteDataSource.getBranches();
  }
}