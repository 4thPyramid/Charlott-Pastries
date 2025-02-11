import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/store_ready_orders_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/store_ready_orders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ready_ordre_state.dart';
part 'ready_ordre_cubit.freezed.dart';

class ReadyOrdreCubit extends Cubit<ReadyOrdreState> {
  final StoreReadyOrdersUseCase _storeReadyOrdersUseCase;
  ReadyOrdreCubit(this._storeReadyOrdersUseCase)
      : super(const ReadyOrdreState.initial());

  Future<void> storeReadyOrders(int quantity, int orderId) async {
    emit(const ReadyOrdreState.loading());
    final result = await _storeReadyOrdersUseCase.call(quantity, orderId);
    result.fold(
      (l) => emit(ReadyOrdreState.error(l)),
      (r) => emit(ReadyOrdreState.ready(r)),
    );
  }
}
