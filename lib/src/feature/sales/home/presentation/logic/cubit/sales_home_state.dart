part of 'sales_home_cubit.dart';

@freezed
class SalesHomeState with _$SalesHomeState {
  const factory SalesHomeState.initial() = _Initial;

  const factory SalesHomeState.loading() = _Loading;
  const factory SalesHomeState.failure(ErrorModel error) = _Failure;
  const factory SalesHomeState.statsLoaded(OrderStatusCountsModel stats) =
      _StatsLoaded;
}
