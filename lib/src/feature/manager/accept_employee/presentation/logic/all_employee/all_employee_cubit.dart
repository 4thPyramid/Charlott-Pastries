
import 'package:bloc/bloc.dart';

import '../../../domain/usecase/get_all_employee_use_case.dart';
import 'all_employee_state.dart';

class AllEmployeeCubit extends Cubit<AllEmployeeState<dynamic>> {
  final GetAllEmployeeUseCase _allEmployeeUseCase;

  AllEmployeeCubit(this._allEmployeeUseCase, ) : super(AllEmployeeState.initial());

  Future<void> getAllEmployee() async {  
    emit(AllEmployeeState.loading());
    final result = await _allEmployeeUseCase.getAllEmployee();

    result.fold(
      (error) => emit(AllEmployeeState.failure(error)),
      (success) => emit(AllEmployeeState.success(success)),
    );
  }
}