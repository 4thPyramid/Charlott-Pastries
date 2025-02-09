
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_notification_use_case.dart';
import 'chef_notification_state.dart';

class ChefNotificationCubit extends Cubit<ChefNotificationState> {
  final GetNotificationUseCase notificationUC;

  ChefNotificationCubit(
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