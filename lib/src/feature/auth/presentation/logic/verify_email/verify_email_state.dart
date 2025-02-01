import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/errors/error_model.dart';
part 'verify_email_state.freezed.dart';
@freezed
class VerifyEmailState<T> with _$VerifyEmailState {
  factory VerifyEmailState.initial() = VerifyEmailInitial;

  factory VerifyEmailState.loading() = VerifyEmailLoading;

  factory VerifyEmailState.failure(ErrorModel errorMessage) =
      VerifyEmailFailure;

  factory VerifyEmailState.success(String message) = VerifyEmailSuccess;
}
