import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/notifications_response_model.dart';
import 'chef_notification_api_services.dart';

abstract class NotificationRemoteDs {
  Future<Either<ErrorModel, NotificationResponseModel>> getNotification(
      String userType);
}

class NotificationRemoteDsImpl extends NotificationRemoteDs {
  final NotificationApiServices apiService;
  NotificationRemoteDsImpl(this.apiService);
  @override
  Future<Either<ErrorModel, NotificationResponseModel>> getNotification(
      String userType) async {
    return await apiService.getNotification(userType);
  }
}
