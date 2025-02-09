
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/order_types_response.dart';

part 'order_types_state.freezed.dart';

@freezed
class OrdersTypeState<T> with _$OrdersTypeState<T> {
  const factory OrdersTypeState.initial() = _Initial;
  const factory OrdersTypeState.loading() = _Loading;
  const factory OrdersTypeState.loaded(OrderTypeResponse data) = _Loaded;
  const factory OrdersTypeState.error(ErrorModel message) = _Error;
}