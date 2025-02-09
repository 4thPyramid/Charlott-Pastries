import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/forget_password_use_case.dart';
import '../../../domain/usecase/reset_password_use_case.dart';
import '../../../domain/usecase/verify_reset_code_use_case.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ForgetPasswordUseCase forgetPasswordUseCase;
  final VerifyResetCodeUseCase verifyResetCodeUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;

  ResetPasswordCubit(
    this.forgetPasswordUseCase,
    this.verifyResetCodeUseCase,
    this.resetPasswordUseCase,
  ) : super(const ResetPasswordState.initial());

  // Step 1: Send forget password request
  Future<void> forgetPassword({
    required String identifier,
    required String userType,
  }) async {
    emit(const ResetPasswordState.forgetPasswordLoading());

    final result = await forgetPasswordUseCase.execute(userType, identifier);

    result.fold(
      (error) => emit(ResetPasswordState.forgetPasswordError(error: error)),
      (success) =>
          emit(ResetPasswordState.forgetPasswordSuccess(message: success)),
    );
  }

  // Step 2: Verify reset code
  Future<void> verifyResetCode({
    required String otp,
    required String userType,
    required String identifier,
  }) async {
    emit(const ResetPasswordState.verifyResetCodeLoading());

    final result = await verifyResetCodeUseCase.execute(
      userType,
      otp,
      identifier,
    );

    result.fold(
      (error) => emit(ResetPasswordState.verifyResetCodeError(error: error)),
      (success) =>
          emit(ResetPasswordState.verifyResetCodeSuccess(message: success)),
    );
  }

  // Step 3: Reset password with new password
  Future<void> resetPassword({
    required String password,
    required String userType,
    required String identifier,
    required String otp,
  }) async {
    emit(const ResetPasswordState.newPasswordLoading());

    final result = await resetPasswordUseCase.execute(
      userType,
      otp,
      password,
      identifier,
    );

    result.fold(
      (error) => emit(ResetPasswordState.newPasswordError(error: error)),
      (success) =>
          emit(ResetPasswordState.newPasswordSuccess(message: success)),
    );
  }
}
