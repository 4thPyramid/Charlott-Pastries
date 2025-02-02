
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/chef_register_request.dart';
import '../../domain/usecase/chef_register_usecase.dart';
import 'chef_register_state.dart';

class ChefRegisterCubit extends Cubit<ChefRegisterState> {
  final ChefRegisterUseCase _chefRegisterUseCase;

  ChefRegisterCubit(this._chefRegisterUseCase) 
      : super(ChefRegisterState.initial());

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required int branchId,
    required int specializationId,
    required String bio,

    required String password,
    File? image,
  }) async {
    emit(ChefRegisterState.loading());

    final request = ChefRegisterRequest(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      branchId: branchId,
      password: password,
      image: image, 
      bio: bio,
       specializationId: specializationId,
      
    );

    final result = await _chefRegisterUseCase.execute(request);

    result.fold(
      (failure) => emit(ChefRegisterState.failure(failure)),
      (success) => emit(ChefRegisterState.success(success))
    );
  }
}