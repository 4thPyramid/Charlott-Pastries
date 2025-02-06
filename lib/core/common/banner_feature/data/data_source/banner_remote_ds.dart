import 'package:charlot/core/common/banner_feature/data/data_source/banner_api_servcies.dart';
import 'package:charlot/core/common/banner_feature/data/model/banner_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

abstract class BannerRemoteDs {
  Future<Either<ErrorModel, List<BannerModel>>> getBanners();
}

class BannerRemoteDsImp implements BannerRemoteDs {
  final BannerApiServices bannerApiServices;
  BannerRemoteDsImp(this.bannerApiServices);
  @override
  Future<Either<ErrorModel, List<BannerModel>>> getBanners() {
    return bannerApiServices.getBanners();
  }
}