import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/orders_response.dart';
part 'returned_order_state.freezed.dart';
@freezed
class ReturnedOrderState<T> with _$ReturnedOrderState {
  factory ReturnedOrderState.initial() = ReturnedOrderInitial;

  factory ReturnedOrderState.loading() = ReturnedOrderLoading;

  factory ReturnedOrderState.failure(ErrorModel errorMessage) =
      ReturnedOrderFailure;

  factory ReturnedOrderState.success(OrdersResponse ordersResponse) = ReturnedOrderSuccess;
}
