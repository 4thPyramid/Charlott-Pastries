import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_new_orders_use_case.dart';
import 'new_orders_state.dart';

class ManagerNewOrdersCubit extends Cubit<NewOrdersState<dynamic>> {
  final GetNewOrdersUseCase _newOrdersUseCase;

  ManagerNewOrdersCubit(this._newOrdersUseCase)
      : super(NewOrdersState.initial());

  Future<void> newOrders(DateTime? from, DateTime? to) async {
    emit(NewOrdersState.loading());

    final result = await _newOrdersUseCase.call(from, to);

    result.fold(
      (error) => emit(NewOrdersState.failure(error)),
      (success) => emit(NewOrdersState.success(success)),
    );
  }
}
