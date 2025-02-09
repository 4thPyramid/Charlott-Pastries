import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/accepted_orders_use_caes.dart';
import '../../../domain/use_cases/completed_orders_use_case.dart';
import '../../../domain/use_cases/pinding_orders_use_case.dart';
import 'order_types_state.dart';

class ChefAcceptedOrdersCubit extends Cubit<OrdersTypeState> {
  final GetAcceptedOrdersUseCase acceptedOrdersUseCase;

  ChefAcceptedOrdersCubit(this.acceptedOrdersUseCase) 
      : super(const OrdersTypeState.initial());

  Future<void> getAcceptedOrders() async {
    emit(const OrdersTypeState.loading());
    final result = await acceptedOrdersUseCase();
    result.fold(
      (error) => emit(OrdersTypeState.error(error)),
      (data) => emit(OrdersTypeState.loaded(data))
    );
  }
}

// pending_orders_cubit.dart
class PendingOrdersCubit extends Cubit<OrdersTypeState> {
  final PendingOrdersUseCase pendingOrdersUseCase;

  PendingOrdersCubit(this.pendingOrdersUseCase) 
      : super(const OrdersTypeState.initial());

  Future<void> getPendingOrders() async {
    emit(const OrdersTypeState.loading());
    final result = await pendingOrdersUseCase();
    result.fold(
      (error) => emit(OrdersTypeState.error(error)),
      (data) => emit(OrdersTypeState.loaded(data))
    );
  }
}

// completed_orders_cubit.dart
class ChefCompletedOrdersCubit extends Cubit<OrdersTypeState> {
  final CompletedOrdersUseCase completedOrdersUseCase;

  ChefCompletedOrdersCubit(this.completedOrdersUseCase) 
      : super(const OrdersTypeState.initial());

  Future<void> getCompletedOrders() async {
    emit(const OrdersTypeState.loading());
    final result = await completedOrdersUseCase();
    result.fold(
      (error) => emit(OrdersTypeState.error(error)),
      (data) => emit(OrdersTypeState.loaded(data))
    );
  }
}