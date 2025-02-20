import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/notifications_response_model.dart';
import '../repo/chef_notification_repo.dart';

class GetNotificationUseCase {
  final ChefNotificationRepo _notificationRepository;

  GetNotificationUseCase(this._notificationRepository);

  Future<Either<ErrorModel, NotificationResponseModel>> call(String userType) async {
    return await _notificationRepository.getNotification(userType);
  }
}