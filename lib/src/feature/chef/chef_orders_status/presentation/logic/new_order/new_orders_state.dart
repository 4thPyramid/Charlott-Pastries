part of 'new_orders_cubit.dart';

@freezed
class NewOrderState with _$NewOrderState {
  const factory NewOrderState.initial() = _Initial;
  const factory NewOrderState.loading() = _Loading;
  const factory NewOrderState.loaded(NewestOrdersResponse ordersType) = _Loaded;
  const factory NewOrderState.error(ErrorModel error) = _Error;
}
