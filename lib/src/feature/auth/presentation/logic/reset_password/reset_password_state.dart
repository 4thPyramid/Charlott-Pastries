import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';
@freezed
class ResetPasswordState<T> with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _Initial;
  
  const factory ResetPasswordState.forgetPasswordLoading() = _ForgetPasswordLoading;
  const factory ResetPasswordState.forgetPasswordSuccess({
    required String message,
  }) = _ForgetPasswordSuccess;
  const factory ResetPasswordState.forgetPasswordError({
    required ErrorModel error,
  }) = _ForgetPasswordError;

  const factory ResetPasswordState.verifyResetCodeLoading() = _VerifyResetCodeLoading;
  const factory ResetPasswordState.verifyResetCodeSuccess({
    required String message,
  }) = _VerifyResetCodeSuccess;
  const factory ResetPasswordState.verifyResetCodeError({
    required ErrorModel error,
  }) = _VerifyResetCodeError;

  const factory ResetPasswordState.newPasswordLoading() = _NewPasswordLoading;
  const factory ResetPasswordState.newPasswordSuccess({
    required String message,
  }) = _NewPasswordSuccess;
  const factory ResetPasswordState.newPasswordError({
    required ErrorModel error,
  }) = _NewPasswordError;
}