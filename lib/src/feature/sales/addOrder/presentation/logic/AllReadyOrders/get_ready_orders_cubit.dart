import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/all_ready_product_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/get_all_ready_products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ready_orders_state.dart';
part 'get_ready_orders_cubit.freezed.dart';

class GetReadyOrdersCubit extends Cubit<GetReadyOrdersState> {
  final GetAllReadyProductsUC _getAllReadyProductsUC;
  GetReadyOrdersCubit(this._getAllReadyProductsUC)
      : super(const GetReadyOrdersState.initial());

  Future<void> getReadyOrders() async {
    emit(const GetReadyOrdersState.loading());
    var result = await _getAllReadyProductsUC.call();
    result.fold(
      (l) => emit(GetReadyOrdersState.error(l)),
      (r) => emit(GetReadyOrdersState.ready([r])),
    );
  }
}
