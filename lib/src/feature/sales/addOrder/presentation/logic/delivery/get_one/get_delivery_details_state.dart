import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../core/errors/error_model.dart';
import '../../../../../../manager/empolyee/data/model/delivery_details_response.dart';

part 'get_delivery_details_state.freezed.dart';

@freezed
class GetDeliveryDetailsState with _$GetDeliveryDetailsState {
  const factory GetDeliveryDetailsState.initial() = _Initial;
  const factory GetDeliveryDetailsState.loading() = _Loading;
  const factory GetDeliveryDetailsState.success(DeliveryDetails details) =
      _Success;
  const factory GetDeliveryDetailsState.failure(ErrorModel error) = _Failure;
}
