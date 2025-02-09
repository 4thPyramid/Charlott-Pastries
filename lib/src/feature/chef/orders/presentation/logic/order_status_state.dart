import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status_state.freezed.dart';

@freezed
class OrderStatusState with _$OrderStatusState {
  const factory OrderStatusState.initial() = _Initial;
  const factory OrderStatusState.loading() = _Loading;
  const factory OrderStatusState.success(String message) = _Success;
  const factory OrderStatusState.error(ErrorModel error) = _Error;
}