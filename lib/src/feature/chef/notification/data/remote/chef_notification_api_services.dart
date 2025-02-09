import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/chef_notifications_response.dart';

abstract class ChefNotificationApiServices {
  Future<Either<ErrorModel, ChefNotifications>> getNotifications();
}

class ChefNotificationApiServicesImpl extends ChefNotificationApiServices {
  final ApiConsumer api;
  ChefNotificationApiServicesImpl(this.api);
  @override
  Future<Either<ErrorModel, ChefNotifications>> getNotifications() async {
    try {
      final response = await api.get(EndpointsStrings.chefNotifications);

      return Right(ChefNotifications.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}