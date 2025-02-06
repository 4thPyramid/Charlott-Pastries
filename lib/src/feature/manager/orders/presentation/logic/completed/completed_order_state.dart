
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/orders_response.dart';
part 'completed_order_state.freezed.dart';

@freezed
class CompletedOrderState<T> with _$CompletedOrderState {
  factory CompletedOrderState.initial() = CompletedOrderInitial;

  factory CompletedOrderState.loading() = CompletedOrderLoading;

  factory CompletedOrderState.failure(ErrorModel errorMessage) =
      CompletedOrderFailure;

  factory CompletedOrderState.success(OrdersResponse ordersResponse) = CompletedOrderSuccess;
}
