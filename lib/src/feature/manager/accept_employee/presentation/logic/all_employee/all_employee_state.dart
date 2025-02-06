import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/all_employee_response.dart';
 part 'all_employee_state.freezed.dart';
@freezed
class AllEmployeeState<T> with _$AllEmployeeState {
  factory AllEmployeeState.initial() = AllEmployeeInitial;

  factory AllEmployeeState.loading() = AllEmployeeLoading;

  factory AllEmployeeState.failure(ErrorModel errorMessage) =
      AllEmployeeFailure;

  factory AllEmployeeState.success(AllEmployeeResponse chefResponse) = AllEmployeeSuccess;
}
