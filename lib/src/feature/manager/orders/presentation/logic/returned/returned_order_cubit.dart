import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_returned_order_use_case.dart';
import 'returned_order_state.dart';

class ReturnedOrdersCubit extends Cubit<ReturnedOrderState<dynamic>> {
  final GetReturnedOrderUseCase _returnedOrdersUseCase;

  ReturnedOrdersCubit(this._returnedOrdersUseCase)
      : super(ReturnedOrderState.initial());

  Future<void> call([DateTime? from, DateTime? to]) async {
    emit(ReturnedOrderState.loading());
    final result = await _returnedOrdersUseCase.call(from, to);

    result.fold(
      (error) => emit(ReturnedOrderState.failure(error)),
      (success) => emit(ReturnedOrderState.success(success)),
    );
  }
}
