import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/clientModels/add_customer_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/ordermodels/add_order_response_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/priceModels/add_price_request_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/add_client_data_uc.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/add_order_details_uc.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/add_order_price_uc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_order_state.dart';
part 'add_order_cubit.freezed.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(
    this._addOrderDetailsUC,
    this._addOrderPriceUC,
    this._addClientDataUc,
  ) : super(const AddOrderState.initial());

  final AddOrderDetailsUC _addOrderDetailsUC;
  final AddOrderPriceUC _addOrderPriceUC;
  final AddClientDataUc _addClientDataUc;

  void updateSameDayDelivery(bool value) {
        print('Updating isSameDay to: $value');

    emit(state.copyWith(isSameDay: value));
  }
  

  Future<void> addOrderDetails(AddOrderRequestModel request) async {
    emit(AddOrderState.loading(isSameDay: state.isSameDay));
    final result = await _addOrderDetailsUC.call(request);
    result.fold(
      (error) => emit(AddOrderState.failure(error, isSameDay: state.isSameDay)),
      (success) =>
          emit(AddOrderState.success(success, isSameDay: state.isSameDay)),
    );
  }

  Future<void> addOrderPrice(AddPriceRequestModel request, int orderId) async {
    emit(AddOrderState.loading(isSameDay: state.isSameDay));
    final result = await _addOrderPriceUC.call(request, orderId);
    result.fold(
      (error) => emit(AddOrderState.failure(error, isSameDay: state.isSameDay)),
      (success) =>
          emit(AddOrderState.success(success, isSameDay: state.isSameDay)),
    );
  }

  Future<void> addClientData(
      AddCustomerRequestModel request, int orderId) async {
    emit(AddOrderState.loading(isSameDay: state.isSameDay));
    final result = await _addClientDataUc.call(request, orderId);
    result.fold(
      (error) => emit(AddOrderState.failure(error, isSameDay: state.isSameDay)),
      (success) =>
          emit(AddOrderState.success(success, isSameDay: state.isSameDay)),
    );
  }
}
