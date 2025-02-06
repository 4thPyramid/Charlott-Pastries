import 'package:charlot/core/common/banner_feature/data/model/banner_model.dart';
import 'package:charlot/core/common/banner_feature/domain/repo/banners_repo.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:dartz/dartz.dart';

class BannerUseCase {
  final BannersRepo bannersRepo;
  BannerUseCase(this.bannersRepo);
  Future<Either<ErrorModel, List<BannerModel>>> call() => bannersRepo.getBanners();
}