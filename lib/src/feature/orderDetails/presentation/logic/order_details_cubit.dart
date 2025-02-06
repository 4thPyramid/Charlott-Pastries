
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_order_details_use_case.dart';
import 'order_details_state.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsState<dynamic>> {
  final GetOrderDetailsUseCase _orderDetailsUseCase;

  OrderDetailsCubit(this._orderDetailsUseCase) : super(OrderDetailsState.initial());

  Future<void> call(int orderId) async { 
    emit(OrderDetailsState.loading());
    final result = await _orderDetailsUseCase.call(orderId);

    result.fold(
      (error) => emit(OrderDetailsState.failure(error)),
      (success) => emit(OrderDetailsState.success(success)),
    );
  }
}