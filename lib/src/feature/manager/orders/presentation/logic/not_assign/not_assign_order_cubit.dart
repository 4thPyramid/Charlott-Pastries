import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_not_assign_order_use_case.dart';
import 'not_assign_order_state.dart';

class NotAssignOrdersCubit extends Cubit<NotAssignOrderState<dynamic>> {
  final GetNotAssignOrderUseCase _notAssignOrdersUseCase;

  NotAssignOrdersCubit(this._notAssignOrdersUseCase)
      : super(NotAssignOrderState.initial());

  Future<void> call([DateTime? from, DateTime? to]) async {
    emit(NotAssignOrderState.loading());
    final result = await _notAssignOrdersUseCase.call(from  , to);

    result.fold(
      (error) => emit(NotAssignOrderState.failure(error)),
      (success) => emit(NotAssignOrderState.success(success)),
    );
  }
}
