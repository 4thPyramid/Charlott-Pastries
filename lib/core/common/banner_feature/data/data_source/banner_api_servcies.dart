import 'dart:convert';

import 'package:charlot/core/common/banner_feature/data/model/banner_model.dart';
import 'package:charlot/core/data/api/api_consumer.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class BannerApiServices {
  Future <Either<ErrorModel,List<BannerModel>>> getBanners();
}

class BannerApiServicesImp implements BannerApiServices{
  final ApiConsumer api;
  BannerApiServicesImp(this.api);
  @override
  Future<Either<ErrorModel, List<BannerModel>>> getBanners()async {
    try{
 final respons = await api.get('chef/banners');

 final banner = List<BannerModel>.from(json.decode(respons).map((x) => BannerModel.fromJson(x))).toList();  

 return Right(banner);
  }on ServerException catch (e) {
      return Left(e.errorModel);
    }
}
}