import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/sales_notifications_response.dart';
import '../repo/sales_notification_repo.dart';

class GetSalesNotificationUseCase {
  final SalesNotificationRepo _notificationRepository;

  GetSalesNotificationUseCase(this._notificationRepository);

  Future<Either<ErrorModel, SalesNotifications>> call() async {
    return await _notificationRepository.getNotifications();
  }
}
