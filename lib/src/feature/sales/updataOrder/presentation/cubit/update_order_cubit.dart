import 'package:bloc/bloc.dart';
import 'package:charlot/src/feature/sales/updataOrder/domain/usecase/update_order_uc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'update_order_state.dart';

class UpdateOrderCubit extends Cubit<UpdateOrderState> {
  final UpdateOrderUseCase updateOrderUseCase;

  UpdateOrderCubit(this.updateOrderUseCase) : super(UpdateOrderInitial());

  Future<void> updateOrder(int orderId, Map<String, dynamic> updatedFields,
      List<MultipartFile>? images) async {
    emit(UpdateOrderLoading());

    final result = await updateOrderUseCase(orderId, updatedFields, images);

    result.fold(
      (error) => emit(UpdateOrderFailure(error.message)),
      (data) => emit(UpdateOrderSuccess(data)),
    );
  }
}
