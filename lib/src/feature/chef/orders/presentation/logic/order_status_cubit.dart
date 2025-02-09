import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/accept_order_use_case.dart';
import '../../domain/usecase/done_order_use_case.dart';
import '../../domain/usecase/start_order_use_case.dart';
import 'order_status_state.dart';

class OrderStatusCubit extends Cubit<OrderStatusState> {
  final ChefAcceptOrderUseCase acceptOrderUseCase;
  //final DeclineOrderUseCase declineOrderUseCase;
  final DoneOrderUseCase doneOrderUseCase;
  final StartOrderUseCase startOrderUseCase;

  OrderStatusCubit(
     this.acceptOrderUseCase,
   //  this.declineOrderUseCase,
     this.doneOrderUseCase,
     this.startOrderUseCase,
) : super(const OrderStatusState.initial());

  Future<void> acceptOrder(int orderId) async {
    emit(const OrderStatusState.loading());
    final result = await acceptOrderUseCase.orderAccept(orderId);
    result.fold(
      (failure) => emit(OrderStatusState.error(failure)),
      (success) => emit(OrderStatusState.success(success)),
    );
  }

  // Future<void> declineOrder(int orderId) async {
  //   emit(const OrderStatusState.loading());
  //   final result = await declineOrderUseCase.orderDecline(orderId);
  //   result.fold(
  //     (failure) => emit(OrderStatusState.error(failure)),
  //     (success) => emit(OrderStatusState.success(success)),
  //   );
  // }

  Future<void> doneOrder(int orderId) async {
    emit(const OrderStatusState.loading());
    final result = await doneOrderUseCase.orderDone(orderId);
    result.fold(
      (failure) => emit(OrderStatusState.error(failure)),
      (success) => emit(OrderStatusState.success(success)),
    );
  }

  Future<void> startOrder(int orderId) async {
    emit(const OrderStatusState.loading());
    final result = await startOrderUseCase.orderStart(orderId);
    result.fold(
      (failure) => emit(OrderStatusState.error(failure)),
      (success) => emit(OrderStatusState.success(success)),
    );
  }
}