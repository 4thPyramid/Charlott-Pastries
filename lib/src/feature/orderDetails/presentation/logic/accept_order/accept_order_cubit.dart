
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/accept_order_use_case.dart';
import 'accept_order_state.dart';

class AcceptOrderCubit extends Cubit<AcceptOrderState<dynamic>> {
  final AcceptOrderUseCase _acceptOrderUseCase;

  AcceptOrderCubit(this._acceptOrderUseCase) : super(AcceptOrderState.initial());

  Future<void> call(int orderId) async { 
    emit(AcceptOrderState.loading());
    final result = await _acceptOrderUseCase.call(orderId);

    result.fold(
      (error) => emit(AcceptOrderState.failure(error)),
      (success) => emit(AcceptOrderState.success(success)),
    );
  }
}