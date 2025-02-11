import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/sales_notifications_response.dart';

abstract class SalesNotificationApiServices {
  Future<Either<ErrorModel, SalesNotifications>> getNotifications();
}

class SalesNotificationApiServicesImpl extends SalesNotificationApiServices {
  final ApiConsumer api;
  SalesNotificationApiServicesImpl(this.api);
  @override
  Future<Either<ErrorModel, SalesNotifications>> getNotifications() async {
    try {
      final response = await api.get(EndpointsStrings.chefNotifications);

      return Right(SalesNotifications.fromJson(response));
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
