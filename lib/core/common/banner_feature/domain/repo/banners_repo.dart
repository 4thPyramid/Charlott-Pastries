import 'package:charlot/core/common/banner_feature/data/data_source/banner_remote_ds.dart';
import 'package:charlot/core/common/banner_feature/data/model/banner_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

abstract class BannersRepo {
  Future<Either<ErrorModel, List<BannerModel>>> getBanners();
}

class BannersRepoImp implements BannersRepo {
  final BannerRemoteDs  bannerRemoteDs;
  BannersRepoImp(this.bannerRemoteDs);
  @override
  Future<Either<ErrorModel, List<BannerModel>>> getBanners() {
    return bannerRemoteDs.getBanners();
  }
}