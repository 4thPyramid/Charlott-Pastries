import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/orderDetails/data/models/sales_order_details_response.dart';
import 'package:charlot/src/feature/sales/orderDetails/domain/usecase/sales_get_order_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order_details_state.dart';
part 'sales_order_details_cubit.freezed.dart';

class SalesOrderDetailsCubit extends Cubit<SalesOrderDetailsState> {
  final SalesGetOrderDetailsUC salesGetOrderDetailsUC;
  SalesOrderDetailsCubit(this.salesGetOrderDetailsUC)
      : super(const SalesOrderDetailsState.initial());

  Future<void> getOrderDetails(String orderId) async {
    emit(const SalesOrderDetailsState.loading());
    final result = await salesGetOrderDetailsUC(orderId);
    result.fold(
      (failure) => emit(SalesOrderDetailsState.failure(failure)),
      (response) => emit(SalesOrderDetailsState.success(response)),
    );
  }
}
