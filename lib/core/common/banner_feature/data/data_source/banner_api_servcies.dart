import 'dart:convert';

import 'package:charlot/core/common/banner_feature/data/model/banner_model.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';
abstract class BannerApiServices {
  Future<Either<ErrorModel, List<BannerModel>>> getBanners();
}

class BannerApiServicesImp implements BannerApiServices {
  final ApiConsumer api;
  BannerApiServicesImp(this.api);

  @override
  Future<Either<ErrorModel, List<BannerModel>>> getBanners() async {
    try {
      final response = await api.get('chef/banners');

      // تحويل الـ Response إلى قائمة من الـ Banners
      final List<BannerModel> banners = (response as List)
          .map((bannerJson) => BannerModel.fromJson(bannerJson))
          .toList();

      return Right(banners);
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}