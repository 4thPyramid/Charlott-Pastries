
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/usecase/delivery_use_case.dart';
import 'get_delivery_details_state.dart';

class GetDeliveryDetailsCubit extends Cubit<GetDeliveryDetailsState> {
  final SalesGetDeliveryDetailsUseCase _getDeliveryDetailsUseCase;

  GetDeliveryDetailsCubit(this._getDeliveryDetailsUseCase) : super(const GetDeliveryDetailsState.initial());

  Future<void> fetchDeliveryDetails(int id) async {
    emit(const GetDeliveryDetailsState.loading());
    final result = await _getDeliveryDetailsUseCase.execute(id);
    result.fold(
      (error) => emit(GetDeliveryDetailsState.failure(error)),
      (details) => emit(GetDeliveryDetailsState.success(details)),
    );
  }
}
