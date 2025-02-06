import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/home/data/mdoels/profile/profile.dart';
import 'package:charlot/src/feature/sales/home/data/remote_d_s.dart';
import 'package:charlot/src/feature/sales/home/domain/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class ReposImpl extends HomeRepos{
  final RemoteDS remoteDS;

  ReposImpl(this.remoteDS);
  @override
  Future<Either<ErrorModel, Profile>> getProfile() async{
    return await remoteDS.getProfile();
  }

}