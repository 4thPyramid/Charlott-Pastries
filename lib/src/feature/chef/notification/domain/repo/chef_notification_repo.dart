import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/chef_notifications_response.dart';
import '../../data/remote/chef_notification_remote_ds.dart';

abstract class ChefNotificationRepo {
  Future<Either<ErrorModel, ChefNotifications>> getNotifications();
}

class ChefNotificationRepoImpl extends ChefNotificationRepo {
  final ChefNotificationRemoteDs chefNotificationRemoteDs;
  ChefNotificationRepoImpl(this.chefNotificationRemoteDs);
  @override
  Future<Either<ErrorModel, ChefNotifications>> getNotifications() async {
    return chefNotificationRemoteDs.getNotifications();
  }
}
