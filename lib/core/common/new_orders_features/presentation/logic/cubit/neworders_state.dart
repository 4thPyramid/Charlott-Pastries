part of 'neworders_cubit.dart';

@freezed
class NewordersState<T> with _$NewordersState {
  const factory NewordersState.initial() = _Initial;
  const factory NewordersState.loading() = _Loading;
  const factory NewordersState.loaded(NewOrderModel newOrders) = _Loaded;
  const factory NewordersState.error(ErrorModel error) = _Erorr;
}
