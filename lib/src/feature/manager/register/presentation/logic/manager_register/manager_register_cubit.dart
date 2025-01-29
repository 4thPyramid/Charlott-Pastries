import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/manager_register_request.dart';
import '../../../domain/usecase/manager_register_usecase.dart';
import 'manager_register_state.dart';

class ManagerRegisterCubit extends Cubit<ManagerRegisterState> {
  final ManagerRegisterUseCase _managerRegisterUseCase;

  ManagerRegisterCubit(this._managerRegisterUseCase) 
      : super(ManagerRegisterState.initial());

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required int branchId,
    required String password,
    File? image,
  }) async {
    emit(ManagerRegisterState.loading());

    final request = ManagerRegisterRequest(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      branchId: branchId,
      password: password,
      image: image,
    );

    final result = await _managerRegisterUseCase.execute(request);

    result.fold(
      (failure) => emit(ManagerRegisterState.failure(failure)),
      (success) => emit(ManagerRegisterState.success(success))
    );
  }
}