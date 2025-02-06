
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/employee_response.dart';

part 'employee_state.freezed.dart';

@freezed
class EmployeesState<T> with _$EmployeesState {
  factory EmployeesState.initial() = EmployeeInitial;

  factory EmployeesState.loading() = EmployeeLoading;

  factory EmployeesState.failure(ErrorModel errorMessage) =
      EmployeeFailure;

  factory EmployeesState.success(EmployeesResponse ordersResponse) = EmployeeSuccess;
}
