
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/login_use_case.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState<dynamic>> {
  final LoginUseCase _loginUseCase;

  LoginCubit(this._loginUseCase) : super(LoginState.initial());

  Future<void> login(String userType,String identifier, String password) async {
    emit(LoginState.loading());

   final result = await _loginUseCase.execute(userType, identifier, password);

    result.fold(
      (error) => emit(LoginState.failure(error)),
      (success) => emit(LoginState.success(success)),
    );
  }
}