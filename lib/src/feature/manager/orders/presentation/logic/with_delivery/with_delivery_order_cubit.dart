import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_order_with_delivery_use_case.dart';
import 'with_delivery_order_state.dart';

class WithDeliveryOrdersCubit extends Cubit<WithDeliveryOrderState<dynamic>> {
  final GetOrderWithDeliveryUseCase _withDeliveryOrdersUseCase;

  WithDeliveryOrdersCubit(this._withDeliveryOrdersUseCase)
      : super(WithDeliveryOrderState.initial());

  Future<void> call([DateTime? from, DateTime? to]) async {
    emit(WithDeliveryOrderState.loading());
    final result = await _withDeliveryOrdersUseCase.call(from, to);

    result.fold(
      (error) => emit(WithDeliveryOrderState.failure(error)),
      (success) => emit(WithDeliveryOrderState.success(success)),
    );
  }
}
