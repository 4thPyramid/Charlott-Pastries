import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/orders_response.dart';
part 'assigned_order_state.freezed.dart';

@freezed
class AssignedOrderState<T> with _$AssignedOrderState {
  factory AssignedOrderState.initial() = AssignOrderInitial;

  factory AssignedOrderState.loading() = AssignOrderLoading;

  factory AssignedOrderState.failure(ErrorModel errorMessage) =
      AssignOrderFailure;

  factory AssignedOrderState.success(OrdersResponse ordersResponse) =
      AssignOrderSuccess;
}
