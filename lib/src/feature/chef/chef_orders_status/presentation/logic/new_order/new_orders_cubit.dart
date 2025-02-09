import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/chef/chef_orders_status/domain/use_cases/new_orders_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../manager/home/data/model/newest_orders_response.dart';

part 'new_orders_state.dart';
part 'new_orders_cubit.freezed.dart';

class NewOrdersCubit extends Cubit<NewOrderState> {
  final NewOrdersUseCase newOrdersUseCase;
  
  NewOrdersCubit(
    this.newOrdersUseCase,
  
    )
      : super(const NewOrderState.initial());

      Future <void> getNewOrders()async{  
        emit(const NewOrderState.loading());
        final result = await newOrdersUseCase();
        result.fold(
        (l) => emit(NewOrderState.error(l)),
        (r) => emit(NewOrderState.loaded(r)));
      }
   
}
