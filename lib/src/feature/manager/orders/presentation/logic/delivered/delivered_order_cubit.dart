import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_delivered_order_use_case.dart';
import 'delivered_order_state.dart';

class DeliveredOrdersCubit extends Cubit<DeliveredOrderState<dynamic>> {
  final GetDeliveredOrderUseCase _deliveredOrdersUseCase;

  DeliveredOrdersCubit(this._deliveredOrdersUseCase) : super(DeliveredOrderState.initial());

  Future<void> call([DateTime? from, DateTime? to]) async { 
    emit(DeliveredOrderState.loading());
    final result = await _deliveredOrdersUseCase.call(from, to);

    result.fold(
      (error) => emit(DeliveredOrderState.failure(error)),
      (success) => emit(DeliveredOrderState.success(success)),
    );
  }
}