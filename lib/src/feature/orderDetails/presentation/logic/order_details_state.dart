import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/error_model.dart';
import '../../data/model/order_details_response.dart';
part 'order_details_state.freezed.dart';

@freezed
class OrderDetailsState<T> with _$OrderDetailsState {
  factory OrderDetailsState.initial() = OrderDetailsInitial;

  factory OrderDetailsState.loading() = OrderDetailsLoading;

  factory OrderDetailsState.failure(ErrorModel errorMessage) =
      OrderDetailsFailure;

  factory OrderDetailsState.success(OrderDetailsResponse ordersResponse) =
      OrderDetailsSuccess;
}
