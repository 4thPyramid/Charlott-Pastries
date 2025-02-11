import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orders/data/models/orders_statues_response_model.dart';
import 'package:charlot/src/feature/sales/orders/domain/usecase/get_compleated_orders_uc.dart';
import 'package:charlot/src/feature/sales/orders/domain/usecase/get_new_orders_uc.dart';
import 'package:charlot/src/feature/sales/orders/domain/usecase/get_pending_orders_uc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order_statues_state.dart';
part 'sales_order_statues_cubit.freezed.dart';

class SalesOrderStatuesCubit extends Cubit<SalesOrderStatuesState> {
  SalesOrderStatuesCubit(
      this.getPendingOrdersUc, this.getCompleatedOrdersUc, this.getNewOrdersUC)
      : super(const SalesOrderStatuesState.initial());
  final GetPendingOrdersUc getPendingOrdersUc;
  final GetCompleatedOrdersUc getCompleatedOrdersUc;
  final GetNewOrdersUC getNewOrdersUC;

  Future<void> getPendingOrders() async {
    emit(const SalesOrderStatuesState.loading());
    var result = await getPendingOrdersUc();
    result.fold(
      (l) => emit(SalesOrderStatuesState.error(l)),
      (r) => emit(SalesOrderStatuesState.loaded(r)),
    );
  }

  Future<void> getCompleatedOrders() async {
    emit(const SalesOrderStatuesState.loading());
    var result = await getCompleatedOrdersUc();
    result.fold(
      (l) => emit(SalesOrderStatuesState.error(l)),
      (r) => emit(SalesOrderStatuesState.loaded(r)),
    );
  }

  Future<void> getNewOrders() async {
    emit(const SalesOrderStatuesState.loading());
    var result = await getNewOrdersUC();
    result.fold(
      (l) => emit(SalesOrderStatuesState.error(l)),
      (r) => emit(SalesOrderStatuesState.loaded(r)),
    );
  }
}
