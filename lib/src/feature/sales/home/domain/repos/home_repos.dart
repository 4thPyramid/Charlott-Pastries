import 'package:charlot/src/feature/sales/home/data/mdoels/profile/profile.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';

abstract class HomeRepos {
  Future <Either<ErrorModel, Profile>>getProfile ();
}