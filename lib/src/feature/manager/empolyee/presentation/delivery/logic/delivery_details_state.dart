import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/delivery_details_response.dart';

part 'delivery_details_state.freezed.dart';


@freezed
class DeliveryDetailsState<T> with _$DeliveryDetailsState {
  factory DeliveryDetailsState.initial() = DeliveryDetailsInitial;

  factory DeliveryDetailsState.loading() = DeliveryDetailsLoading;

  factory DeliveryDetailsState.failure(ErrorModel errorMessage) =
      DeliveryDetailsFailure;

  factory DeliveryDetailsState.success(DeliveryDetails deliveryResponse) = DeliveryDetailSuccess;
}
