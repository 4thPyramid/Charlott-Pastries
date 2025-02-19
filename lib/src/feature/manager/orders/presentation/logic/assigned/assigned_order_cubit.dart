import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_assigned_order_use_case.dart';
import 'assigned_order_state.dart';

class AssignedOrdersCubit extends Cubit<AssignedOrderState<dynamic>> {
  final GetAssignedOrderUseCase _assignOrdersUseCase;

  AssignedOrdersCubit(this._assignOrdersUseCase)
      : super(AssignedOrderState.initial());

  Future<void> call() async {
    emit(AssignedOrderState.loading());
    final result = await _assignOrdersUseCase.call();

    result.fold(
      (error) => emit(AssignedOrderState.failure(error)),
      (success) => emit(AssignedOrderState.success(success)),
    );
  }
}
