
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_in_progress_orders_use_case.dart';
import 'in_progress_orders_state.dart';


class InProgressOrdersCubit extends Cubit<InProgressOrdersState<dynamic>> {
  final GetInProgressOrdersUseCase _inProgressOrdersUseCase;

  InProgressOrdersCubit(this._inProgressOrdersUseCase) : super(InProgressOrdersState.initial());

  Future<void> call() async { 
    emit(InProgressOrdersState.loading());
    final result = await _inProgressOrdersUseCase.call();

    result.fold(
      (error) => emit(InProgressOrdersState.failure(error)),
      (success) => emit(InProgressOrdersState.success(success)),
    );
  }
}