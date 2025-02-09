import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/models/chef_order_details.dart';

part 'chef_order_details_state.freezed.dart';
@freezed
class ChefOrderDetailsState<T> with _$ChefOrderDetailsState<T> {
  const factory ChefOrderDetailsState.initial() = _Initial;
  const factory ChefOrderDetailsState.loading() = _Loading;
  const factory ChefOrderDetailsState.loaded(ChefOrderDetails data) = _Loaded;
  const factory ChefOrderDetailsState.error(ErrorModel message) = _Error;
}