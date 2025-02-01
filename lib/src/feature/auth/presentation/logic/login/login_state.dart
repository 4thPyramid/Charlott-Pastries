import 'package:charlot/src/feature/auth/data/model/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/errors/error_model.dart';

part 'login_state.freezed.dart';
@freezed
class LoginState<T> with _$LoginState {
  factory LoginState.initial() = LoginInitial;

  factory LoginState.loading() = LoginLoading;

  factory LoginState.failure(ErrorModel errorMessage) =
      LoginFailure;

  factory LoginState.success(LoginResponse response) = LoginSuccess;
}
