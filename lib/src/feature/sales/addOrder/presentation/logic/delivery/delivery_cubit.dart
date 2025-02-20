import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/delivery_use_case.dart';
import 'delivery_state.dart';

class GetDeliveryCubit extends Cubit<GetDeliveryState> {
  final SalesGetDeliveryUseCase _getDeliveryUseCase;

  GetDeliveryCubit(this._getDeliveryUseCase) : super(const GetDeliveryState.initial());

  Future<void> fetchDelivery() async {
    emit(const GetDeliveryState.loading());
    final result = await _getDeliveryUseCase.execute();
    result.fold(
      (error) => emit(GetDeliveryState.failure(error)),
      (response) => emit(GetDeliveryState.success(response)),
    );
  }
}