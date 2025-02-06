import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';

part 'select_chef_delivery_state.freezed.dart';
@freezed
class SelectChefAndDeliveryState<T> with _$SelectChefAndDeliveryState {
  factory SelectChefAndDeliveryState.initial() = SelectChefAndDeliveryInitial;

  factory SelectChefAndDeliveryState.loading() = SelectChefAndDeliveryLoading;

  factory SelectChefAndDeliveryState.failure(ErrorModel errorMessage) =
      SelectChefAndDeliveryFailure;

  factory SelectChefAndDeliveryState.success(String message) = SelectChefAndDeliveryuccess;
}
