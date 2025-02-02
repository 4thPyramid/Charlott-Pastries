import 'package:bloc/bloc.dart';
import 'package:charlot/core/common/new_orders_features/data/model/new_orders_model.dart';
import 'package:charlot/core/common/new_orders_features/domain/use_case/new_orders_use_case.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'neworders_state.dart';
part 'neworders_cubit.freezed.dart';

class NewordersCubit extends Cubit<NewordersState> {
  final NewOrdersUseCase newOrdersUseCase;

  NewordersCubit(this.newOrdersUseCase) : super(NewordersState.initial());
  Future<void> getNewOrders() async {
    emit(const NewordersState.loading());
    final result = await newOrdersUseCase.call();
    result.fold(
      (l) => emit(NewordersState.error(l)),
      (r) => emit(NewordersState.loaded(r)),
    );
  }
}
