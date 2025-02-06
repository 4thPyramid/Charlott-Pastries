
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/select_chef_use_case.dart';
import '../../../domain/usecase/select_delivery_use_case.dart';
import 'select_chef_delivery_state.dart';

class SelectChefAndDeliveryCubit extends Cubit<SelectChefAndDeliveryState<dynamic>> {
  final SelectChefUseCase _chefsUseCase;
  final SelectDeliveryUseCase _deliveryUseCase;

  SelectChefAndDeliveryCubit(this._chefsUseCase, this._deliveryUseCase) : super(SelectChefAndDeliveryState.initial());

  Future<void> selectChef(int chefId , int orderId) async {  
    emit(SelectChefAndDeliveryState.loading());
    final result = await _chefsUseCase.selectChef(chefId , orderId);

    result.fold(
      (error) => emit(SelectChefAndDeliveryState.failure(error)),
      (success) => emit(SelectChefAndDeliveryState.success(success)),
    );
  }

  
  Future<void> selectDelivery(int deliveryId , int orderId) async {  
    emit(SelectChefAndDeliveryState.loading());
    final result = await _deliveryUseCase.selectDelivery(deliveryId , orderId);

    result.fold(
      (error) => emit(SelectChefAndDeliveryState.failure(error)),
      (success) => emit(SelectChefAndDeliveryState.success(success)),
    );
  }
}