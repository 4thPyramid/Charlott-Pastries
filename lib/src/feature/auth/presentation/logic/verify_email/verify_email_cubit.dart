
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/verify_email_use_case.dart';
import 'verify_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState<dynamic>> {
  final VerifyEmailUseCase _verifyEmailUseCase;

  VerifyEmailCubit(this._verifyEmailUseCase) : super(VerifyEmailState.initial());

  Future<void> verifyEmail(String userType, String otp) async {
    emit(VerifyEmailState.loading());

   final result = await _verifyEmailUseCase(userType, otp);

    result.fold(
      (error) => emit(VerifyEmailState.failure(error)),
      (success) => emit(VerifyEmailState.success(success)),
    );
  }
}