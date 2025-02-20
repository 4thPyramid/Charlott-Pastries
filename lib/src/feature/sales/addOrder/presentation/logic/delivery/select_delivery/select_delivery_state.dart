
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../core/errors/error_model.dart';

part 'select_delivery_state.freezed.dart';

@freezed
class SelectDeliveryState with _$SelectDeliveryState {
  const factory SelectDeliveryState.initial() = _Initial;
  const factory SelectDeliveryState.loading() = _Loading;
  const factory SelectDeliveryState.success(String response) = _Success;
  const factory SelectDeliveryState.failure(ErrorModel error) = _Failure;
}
