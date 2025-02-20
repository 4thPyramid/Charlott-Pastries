//create chefNotificationState with freezed
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/notifications_response_model.dart';
part  'chef_notification_state.freezed.dart';


@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.loaded(NotificationResponseModel notification) =
      _Loaded;
  const factory NotificationState.error(ErrorModel error) = _Error;
}
