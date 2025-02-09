import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/chef_notifications_response.dart';
import '../repo/chef_notification_repo.dart';

class GetNotificationUseCase {
  final ChefNotificationRepo _notificationRepository;

  GetNotificationUseCase(this._notificationRepository);

  Future<Either<ErrorModel, ChefNotifications>> call() async {
    return await _notificationRepository.getNotifications();
  }
}