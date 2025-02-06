part of 'orders_type_cubit.dart';

@freezed
class OrdersTypeState with _$OrdersTypeState {
  const factory OrdersTypeState.initial() = _Initial;
  const factory OrdersTypeState.loading() = _Loading;
  const factory OrdersTypeState.loaded(List<OrdersTypeModel> ordersType) = _Loaded;
  const factory OrdersTypeState.error(ErrorModel error) = _Erorr;
}
