import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/orders_response.dart';
part 'with_delivery_order_state.freezed.dart';
@freezed
class WithDeliveryOrderState<T> with _$WithDeliveryOrderState {
  factory WithDeliveryOrderState.initial() = WithDeliveryOrderInitial;

  factory WithDeliveryOrderState.loading() = WithDeliveryOrderLoading;

  factory WithDeliveryOrderState.failure(ErrorModel errorMessage) =
      WithDeliveryOrderFailure;

  factory WithDeliveryOrderState.success(OrdersResponse ordersResponse) = WithDeliveryOrderSuccess;
}
