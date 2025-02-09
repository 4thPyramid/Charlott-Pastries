import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../model/chef_notifications_response.dart';
import 'chef_notification_api_services.dart';

abstract class ChefNotificationRemoteDs {
  Future<Either<ErrorModel, ChefNotifications>> getNotifications();
}

class ChefNotificationRemoteDsImpl extends ChefNotificationRemoteDs {
  final ChefNotificationApiServices apiService;
  ChefNotificationRemoteDsImpl(this.apiService);
  @override
  Future<Either<ErrorModel, ChefNotifications>> getNotifications() async{
    return apiService.getNotifications();
  }
}