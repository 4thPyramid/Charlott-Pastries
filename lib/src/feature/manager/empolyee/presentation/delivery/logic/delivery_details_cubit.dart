import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_delivery_details_use_case.dart';
import 'delivery_details_state.dart';

class DeliveryDetailsCubit extends Cubit<DeliveryDetailsState<dynamic>> {
  final GetDeliveryDetailsUseCase _deliveryUseCase;

  DeliveryDetailsCubit(this._deliveryUseCase, ) : super(DeliveryDetailsState.initial());

  Future<void> getDeliveryDetails(int id) async {  
    emit(DeliveryDetailsState.loading());
    final result = await _deliveryUseCase.execute(id);

    result.fold(
      (error) => emit(DeliveryDetailsState.failure(error)),
      (success) => emit(DeliveryDetailsState.success(success)),
    );
  }
}