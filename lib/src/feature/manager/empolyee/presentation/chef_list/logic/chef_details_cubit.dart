import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_chef_details_use_case.dart';
import 'chef_details_state.dart';

class ChefDetailsCubit extends Cubit<ChefDetailsState<dynamic>> {
  final GetChefDetailsUseCase _chefsUseCase;

  ChefDetailsCubit(this._chefsUseCase, ) : super(ChefDetailsState.initial());

  Future<void> getChefDetails(int id) async {  
    emit(ChefDetailsState.loading());
    final result = await _chefsUseCase.execute(id);

    result.fold(
      (error) => emit(ChefDetailsState.failure(error)),
      (success) => emit(ChefDetailsState.success(success)),
    );
  }
}