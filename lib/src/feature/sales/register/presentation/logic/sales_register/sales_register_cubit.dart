
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/sales_register_request.dart';
import '../../../domain/usecase/sales_register_usecase.dart';
import 'sales_register_state.dart';

class SalesRegisterCubit extends Cubit<SalesRegisterState> {
  final SalesRegisterUseCase _SalesRegisterUseCase;

  SalesRegisterCubit(this._SalesRegisterUseCase) 
      : super(SalesRegisterState.initial());

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String password,
    File? image,
  }) async {
    emit(SalesRegisterState.loading());

    final request = SalesRegisterRequest(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      password: password,
      image: image,
    );

    final result = await _SalesRegisterUseCase.execute(request);

    result.fold(
      (failure) => emit(SalesRegisterState.failure(failure)),
      (success) => emit(SalesRegisterState.success(success))
    );
  }
}