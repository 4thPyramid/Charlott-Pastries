import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/sales_notifications_response.dart';
import '../../data/remote/sales_notification_remote_ds.dart';

abstract class SalesNotificationRepo {
  Future<Either<ErrorModel, SalesNotifications>> getNotifications();
}

class SalesNotificationRepoImpl extends SalesNotificationRepo {
  final SalesNotificationRemoteDs salesNotificationRemoteDs;
  SalesNotificationRepoImpl(this.salesNotificationRemoteDs);
  @override
  Future<Either<ErrorModel, SalesNotifications>> getNotifications() async {
    return salesNotificationRemoteDs.getNotifications();
  }
}
