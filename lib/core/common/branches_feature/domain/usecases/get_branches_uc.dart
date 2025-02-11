import 'package:charlot/core/common/branches_feature/data/models/branch_model.dart';
import 'package:charlot/core/common/branches_feature/domain/repo/branches_repo.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

class GetBranchesUc {
  final BranchesRepo branchesRepo;

  GetBranchesUc(this.branchesRepo);
  Future<Either<ErrorModel,BranchResponse>> call()async{
    return await branchesRepo.getBranches();
  }
}
