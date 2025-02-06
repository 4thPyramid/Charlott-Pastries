import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_refused_order_use_case.dart';
import 'refused_order_state.dart';

class RefusedOrdersCubit extends Cubit<RefusedOrderState<dynamic>> {
  final GetRefusedOrderUseCase _refusedOrdersUseCase;

  RefusedOrdersCubit(this._refusedOrdersUseCase) : super(RefusedOrderState.initial());

  Future<void> call() async { 
    emit(RefusedOrderState.loading());
    final result = await _refusedOrdersUseCase.call();

    result.fold(
      (error) => emit(RefusedOrderState.failure(error)),
      (success) => emit(RefusedOrderState.success(success)),
    );
  }
}