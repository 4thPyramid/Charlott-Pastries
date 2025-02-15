import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/orders_response.dart';
part 'not_assign_order_state.freezed.dart';
@freezed
class NotAssignOrderState<T> with _$NotAssignOrderState {
  factory NotAssignOrderState.initial() = NotAssignOrderInitial;

  factory NotAssignOrderState.loading() = NotAssignOrderLoading;

  factory NotAssignOrderState.failure(ErrorModel errorMessage) =
      NotAssignOrderFailure;

  factory NotAssignOrderState.success(OrdersResponse ordersResponse) =
      NotAssignOrderSuccess;
}
