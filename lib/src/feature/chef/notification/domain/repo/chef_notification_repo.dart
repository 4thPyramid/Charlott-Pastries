import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/notifications_response_model.dart';
import '../../data/remote/chef_notification_remote_ds.dart';

abstract class ChefNotificationRepo {
  Future<Either<ErrorModel, NotificationResponseModel>> getNotification(
      String userType);
}

class ChefNotificationRepoImpl extends ChefNotificationRepo {
  final NotificationRemoteDs chefNotificationRemoteDs;
  ChefNotificationRepoImpl(this.chefNotificationRemoteDs);
  @override
  Future<Either<ErrorModel, NotificationResponseModel>> getNotification(
      String userType) async {
    return await chefNotificationRemoteDs.getNotification(userType);
  }
}
