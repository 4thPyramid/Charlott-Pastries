import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecase/delivery_use_case.dart';
import 'select_delivery_state.dart';

class SalesSelectDeliveryCubit extends Cubit<SelectDeliveryState> {
  final SalesSelectDeliveryUseCase _selectDeliveryUseCase;

  SalesSelectDeliveryCubit(this._selectDeliveryUseCase)
      : super(const SelectDeliveryState.initial());

  Future<void> selectDelivery(int deliveryId, int branchId, int orderId) async {
    emit(const SelectDeliveryState.loading());
    final result =
        await _selectDeliveryUseCase.selectDelivery(deliveryId,branchId ,orderId);
    result.fold(
      (error) => emit(SelectDeliveryState.failure(error)),
      (response) => emit(SelectDeliveryState.success(response)),
    );
  }
}
