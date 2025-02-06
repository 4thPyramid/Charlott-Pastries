import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';

part 'employee_action_state.freezed.dart';

@freezed
class EmployeeActionState with _$EmployeeActionState {
  const factory EmployeeActionState.initial() = _Initial;
  const factory EmployeeActionState.loading() = _Loading;
  const factory EmployeeActionState.success(String message) = _Success;
  const factory EmployeeActionState.failure(ErrorModel error) = _Failure;
}