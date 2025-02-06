import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/home/data/mdoels/banners/banners.dart';
import 'package:charlot/src/feature/sales/home/data/remote_d_s.dart';
import 'package:dartz/dartz.dart';

class GetBannerUC {
  final RemoteDS remoteDS;

  GetBannerUC(this.remoteDS);

  Future <Either<ErrorModel,Banners>> call() async {
    return await remoteDS.getBanner();
}}