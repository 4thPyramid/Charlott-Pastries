import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/refused_orders_response.dart';

part 'refused_order_state.freezed.dart';
@freezed
class RefusedOrderState<T> with _$RefusedOrderState {
  factory RefusedOrderState.initial() = RefusedOrderInitial;

  factory RefusedOrderState.loading() = RefusedOrderLoading;

  factory RefusedOrderState.failure(ErrorModel errorMessage) =
      RefusedOrderFailure;

  factory RefusedOrderState.success(RefusedOrderResponse ordersResponse) = RefusedOrderSuccess;
}
