
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/accept_chef_use_case.dart';
import '../../../domain/usecase/accept_delivery_use_case.dart';
import '../../../domain/usecase/reject_chef_use_case.dart';
import '../../../domain/usecase/reject_delivery_use_case.dart';
import 'employee_action_state.dart';

class EmployeeActionCubit extends Cubit<EmployeeActionState> {
  final AcceptChefUseCase _acceptChefUseCase;
  final AcceptDeliveryUseCase _acceptDeliveryUseCase;
  final RejectChefUseCase _rejectChefUseCase;
  final RejectDeliveryUseCase _rejectDeliveryUseCase;

  EmployeeActionCubit(
     AcceptChefUseCase acceptChefUseCase,
     AcceptDeliveryUseCase acceptDeliveryUseCase,
     RejectChefUseCase rejectChefUseCase,
     RejectDeliveryUseCase rejectDeliveryUseCase,
  )  : _acceptChefUseCase = acceptChefUseCase,
        _acceptDeliveryUseCase = acceptDeliveryUseCase,
        _rejectChefUseCase = rejectChefUseCase,
        _rejectDeliveryUseCase = rejectDeliveryUseCase,
        super(const EmployeeActionState.initial());

  Future<void> acceptChef(int chefId) async {
    emit(const EmployeeActionState.loading());
    final result = await _acceptChefUseCase(chefId);
    result.fold(
      (error) => emit(EmployeeActionState.failure(error)),
      (success) => emit(EmployeeActionState.success(success)),
    );
  }

  Future<void> acceptDelivery(int deliveryId) async {
    emit(const EmployeeActionState.loading());
    final result = await _acceptDeliveryUseCase(deliveryId);
    result.fold(
      (error) => emit(EmployeeActionState.failure(error)),
      (success) => emit(EmployeeActionState.success(success)),
    );
  }

  Future<void> rejectChef(int chefId) async {
    emit(const EmployeeActionState.loading());
    final result = await _rejectChefUseCase(chefId);
    result.fold(
      (error) => emit(EmployeeActionState.failure(error)),
      (success) => emit(EmployeeActionState.success(success)),
    );
  }

  Future<void> rejectDelivery(int deliveryId) async {
    emit(const EmployeeActionState.loading());
    final result = await _rejectDeliveryUseCase(deliveryId);
    result.fold(
      (error) => emit(EmployeeActionState.failure(error)),
      (success) => emit(EmployeeActionState.success(success)),
    );
  }
}