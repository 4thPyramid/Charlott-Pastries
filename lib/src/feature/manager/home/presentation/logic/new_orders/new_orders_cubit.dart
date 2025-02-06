import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_new_orders_use_case.dart';
import 'new_orders_state.dart';

class NewOrdersCubit extends Cubit<NewOrdersState<dynamic>> {
  final GetNewOrdersUseCase _newOrdersUseCase;

  NewOrdersCubit(this._newOrdersUseCase) : super(NewOrdersState.initial());

  Future<void> newOrders() async {
    emit(NewOrdersState.loading());

   final result = await _newOrdersUseCase.call();

    result.fold(
      (error) => emit(NewOrdersState.failure(error)),
      (success) => emit(NewOrdersState.success(success)),
    );
  }
}