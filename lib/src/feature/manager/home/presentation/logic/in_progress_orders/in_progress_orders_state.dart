import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/in_progress_order_response.dart';

part 'in_progress_orders_state.freezed.dart';

@freezed
class InProgressOrdersState<T> with _$InProgressOrdersState {
  factory InProgressOrdersState.initial() = InProgressOrderInitial;

  factory InProgressOrdersState.loading() = InProgressOrderLoading;

  factory InProgressOrdersState.failure(ErrorModel errorMessage) =
      InProgressOrderFailure;

  factory InProgressOrdersState.success(InProgressOrderResponse ordersResponse) = InProgressOrderSuccess;
}
