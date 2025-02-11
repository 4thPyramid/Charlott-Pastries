//create chefNotificationState with freezed
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/sales_notifications_response.dart';
part 'sales_notification_state.freezed.dart';

@freezed
class ChefNotificationState with _$ChefNotificationState {
  const factory ChefNotificationState.initial() = _Initial;
  const factory ChefNotificationState.loading() = _Loading;
  const factory ChefNotificationState.error(ErrorModel message) = _Error;
  const factory ChefNotificationState.loaded(
      SalesNotifications chefNotifications) = _Loaded;
}
