import 'package:charlot/src/feature/manager/empolyee/domain/usecase/get_delivery_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_chef_use_case.dart';
import 'employee_state.dart';

class EmployeesCubit extends Cubit<EmployeesState<dynamic>> {
  final GetChefUseCase _chefsUseCase;
  final GetDeliveryUseCase _deliveryUseCase;

  EmployeesCubit(this._chefsUseCase, this._deliveryUseCase)
      : super(EmployeesState.initial());

  Future<void> callChef() async {
    emit(EmployeesState.loading());
    final result = await _chefsUseCase.execute();

    result.fold(
      (error) => emit(EmployeesState.failure(error)),
      (success) => emit(EmployeesState.success(success)),
    );
  }

  Future<void> callDelivery() async {
    emit(EmployeesState.loading());
    final result = await _deliveryUseCase.execute();

    result.fold(
      (error) => emit(EmployeesState.failure(error)),
      (success) => emit(EmployeesState.success(success)),
    );
  }
}
