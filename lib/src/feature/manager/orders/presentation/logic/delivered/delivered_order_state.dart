
import 'package:charlot/src/feature/manager/orders/data/model/orders_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
part 'delivered_order_state.freezed.dart';

@freezed
class DeliveredOrderState<T> with _$DeliveredOrderState {
  factory DeliveredOrderState.initial() = DeliveredOrderInitial;

  factory DeliveredOrderState.loading() = DeliveredOrderLoading;

  factory DeliveredOrderState.failure(ErrorModel errorMessage) =
      DeliveredOrderFailure;

  factory DeliveredOrderState.success(OrdersResponse ordersResponse) = DeliveredOrderSuccess;
}
