import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/newest_orders_response.dart';

part 'new_orders_state.freezed.dart';
@freezed
class NewOrdersState<T> with _$NewOrdersState {
  factory NewOrdersState.initial() = NewOrdersInitial;

  factory NewOrdersState.loading() = NewOrdersLoading;

  factory NewOrdersState.failure(ErrorModel errorMessage) =
      NewOrdersFailure;

  factory NewOrdersState.success(NewestOrdersResponse ordersResponse) = NewOrdersSuccess;
}
