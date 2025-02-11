part of 'sales_order_statues_cubit.dart';

@freezed
class SalesOrderStatuesState with _$SalesOrderStatuesState {
  const factory SalesOrderStatuesState.initial() = _Initial;
  const factory SalesOrderStatuesState.loading() = _Loading;
  const factory SalesOrderStatuesState.error(ErrorModel message) = _Error;
  const factory SalesOrderStatuesState.loaded(
      OrdersStatuesResponseModel ordersStatuesResponseModel) = _Loaded;
}
