import 'package:dartz/dartz.dart';

import '../../../../../../core/constants/endpoints_strings.dart';
import '../../../../../../core/data/api/api_consumer.dart';
import '../../../../../../core/errors/error_model.dart';
import '../../../../../../core/errors/exceptions.dart';
import '../model/notifications_response_model.dart';

abstract class NotificationApiServices {
  Future<Either<ErrorModel, NotificationResponseModel>> getNotification(
      String userType);
}

class NotificationApiServicesImpl implements NotificationApiServices {
  final ApiConsumer apiConsumer;
  NotificationApiServicesImpl(this.apiConsumer);
  @override
  Future<Either<ErrorModel, NotificationResponseModel>> getNotification(
      String userType) async {
        print(userType);
    String endpoint;

    switch (userType) {
      case 'manager':
        endpoint = EndpointsStrings.managerNotifications;
        break;
      case 'sales':
        endpoint = EndpointsStrings.salesNotification;
        break;
      case 'chef':
        endpoint = EndpointsStrings.chefNotifications;
        break;
      default:
        return Left(ErrorModel(message: 'Invalid user type'));
    }
    try {
      final response = await apiConsumer.get(endpoint);
      if (response is List<dynamic>) {
        final result = NotificationResponseModel.fromJson(response);
        return Right(result);
      } else {
        return Left(ErrorModel(message: " no notification format"));
      }
    } on ServerException catch (e) {
      return Left(e.errorModel);
    }
  }
}
