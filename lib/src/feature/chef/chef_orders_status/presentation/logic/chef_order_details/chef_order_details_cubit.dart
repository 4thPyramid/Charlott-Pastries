import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/get_chef_details_use_case.dart';
import 'chef_order_details_state.dart';

class ChefOrderDetailsCubit extends Cubit<ChefOrderDetailsState> {
  final GetChefOrderDetailsUseCase chefOrderDetailsUC;

  ChefOrderDetailsCubit(this.chefOrderDetailsUC) 
      : super( const ChefOrderDetailsState.initial());

  Future<void> getChefOrderDetails(int orderId) async {
    emit(const ChefOrderDetailsState.loading());
    final result = await chefOrderDetailsUC.getChefOrderDetails(orderId);
    result.fold(
      (error) => emit(ChefOrderDetailsState.error(error)),
      (data) => emit(ChefOrderDetailsState.loaded(data))
    );
  }
}
