import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/data/models/orders_type_model.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/accepted_orders_use_caes.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/completed_orders_use_case.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/new_orders_use_case.dart';
import 'package:charlot/src/feature/chef/chef_orfders_status/domain/use_cases/pinding_orders_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_type_state.dart';
part 'orders_type_cubit.freezed.dart';

class OrdersTypeCubit extends Cubit<OrdersTypeState> {
  final NewOrdersUseCase newOrdersUseCase;
  final CompletedOrdersUseCase compeletedOrdersUseCase;
  final AcceptedOrdersUseCaes acceptedOrdersUseCaes;
  final PendingOrdersUseCase pindingOrdersUseCase;
  OrdersTypeCubit(
    this.newOrdersUseCase,
    this.compeletedOrdersUseCase,
    this.acceptedOrdersUseCaes,
    this.pindingOrdersUseCase)
      : super(const OrdersTypeState.initial());

      Future <void> getNewOrders()async{  
        emit(const OrdersTypeState.loading());
        final result = await newOrdersUseCase();
        result.fold(
        (l) => emit(OrdersTypeState.error(l)),
        (r) => emit(OrdersTypeState.loaded(r)));
      }
       Future <void> getCompletedOrders()async{  
        emit(const OrdersTypeState.loading());
        final result = await compeletedOrdersUseCase();
        result.fold(
        (l) => emit(OrdersTypeState.error(l)),
        (r) => emit(OrdersTypeState.loaded(r)));
      }
       Future <void> getAcceptedOrders()async{  
        emit(const OrdersTypeState.loading());
        final result = await acceptedOrdersUseCaes();
        result.fold(
        (l) => emit(OrdersTypeState.error(l)),
        (r) => emit(OrdersTypeState.loaded(r)));
      }
       Future <void> getPendingOrders()async{  
        emit(const OrdersTypeState.loading());
        final result = await pindingOrdersUseCase();
        result.fold(
        (l) => emit(OrdersTypeState.error(l)),
        (r) => emit(OrdersTypeState.loaded(r)));
      }
}
