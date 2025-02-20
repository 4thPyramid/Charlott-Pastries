import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_notification_use_case.dart';
import 'chef_notification_state.dart';


class NotificationCubit extends Cubit<NotificationState> {
  final GetNotificationUseCase getNotificationUseCase;
  NotificationCubit(this.getNotificationUseCase)
      : super(const NotificationState.initial());

  Future<void> getNotification(String userType) async {
    emit(const NotificationState.loading());
    final result = await getNotificationUseCase.call(userType);
    result.fold(
      (error) => emit(NotificationState.error(error)),
      (r) => emit(NotificationState.loaded(r)),
    );
  }
}
