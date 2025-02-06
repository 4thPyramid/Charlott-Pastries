import 'package:bloc/bloc.dart';
import 'package:charlot/core/common/specialization_feature/domain/usecases/get_specialization_uc.dart';

import 'specialization_state.dart';

class SpecializationCubit extends Cubit<SpecializationState> {
  final GetSpecializationUc getSpecializationUseCase;
  SpecializationCubit(this.getSpecializationUseCase) : super(SpecializationState.initial());

  Future<void> getSpecialization() async {
    emit(const SpecializationState.loading());
    final result = await getSpecializationUseCase();
    result.fold(
       (l) => emit(SpecializationState.error(l)),
       (r) => emit(SpecializationState.Loaded(r)));
  }
}
