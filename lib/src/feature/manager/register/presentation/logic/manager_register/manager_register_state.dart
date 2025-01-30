import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
part 'manager_register_state.freezed.dart';

@freezed
class ManagerRegisterState<T> with _$ManagerRegisterState {
  factory ManagerRegisterState.initial() = ManagerRegisterInitial;

  factory ManagerRegisterState.loading() = ManagerRegisterLoading;

  factory ManagerRegisterState.failure(ErrorModel errorMessage) =
      ManagerRegisterFailure;

  factory ManagerRegisterState.success(String message) = ManagerRegisterSuccess;
}
