import 'package:bloc/bloc.dart';

import '../../../domain/usecase/get_completed_order_use_case.dart';
import 'completed_order_state.dart';

class CompletedOrdersCubit extends Cubit<CompletedOrderState<dynamic>> {
  final GetCompletedOrderUseCase _completedOrdersUseCase;

  CompletedOrdersCubit(this._completedOrdersUseCase) : super(CompletedOrderState.initial());

  Future<void> call() async { 
    emit(CompletedOrderState.loading());
    final result = await _completedOrdersUseCase.call();

    result.fold(
      (error) => emit(CompletedOrderState.failure(error)),
      (success) => emit(CompletedOrderState.success(success)),
    );
  }
}