import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../../data/model/accept_order_response.dart';

part 'accept_order_state.freezed.dart';

@freezed
class AcceptOrderState<T> with _$AcceptOrderState {
  factory AcceptOrderState.initial() = AcceptOrderInitial;

  factory AcceptOrderState.loading() = AcceptOrderLoading;

  factory AcceptOrderState.failure(ErrorModel errorMessage) =
      AcceptOrderFailure;

  factory AcceptOrderState.success(AcceptOrderResponse ordersResponse) = AcceptOrderSuccess;
}
