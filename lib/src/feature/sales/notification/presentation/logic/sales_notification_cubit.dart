import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_notification_use_case.dart';
import 'sales_notification_state.dart';

class SalesNotificationCubit extends Cubit<ChefNotificationState> {
  final GetSalesNotificationUseCase notificationUC;

  SalesNotificationCubit(
    this.notificationUC,
  ) : super(const ChefNotificationState.initial());

  Future<void> getChefNotification() async {
    emit(const ChefNotificationState.loading());
    final result = await notificationUC.call();
    result.fold(
      (failure) => emit(ChefNotificationState.error(failure)),
      (success) => emit(ChefNotificationState.loaded(success)),
    );
  }
}
