import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/sales_notifications_response.dart';
import 'sales_notification_api_services.dart';

abstract class SalesNotificationRemoteDs {
  Future<Either<ErrorModel, SalesNotifications>> getNotifications();
}

class SalesNotificationRemoteDsImpl extends SalesNotificationRemoteDs {
  final SalesNotificationApiServices apiService;
  SalesNotificationRemoteDsImpl(this.apiService);
  @override
  Future<Either<ErrorModel, SalesNotifications>> getNotifications() async {
    return apiService.getNotifications();
  }
}
