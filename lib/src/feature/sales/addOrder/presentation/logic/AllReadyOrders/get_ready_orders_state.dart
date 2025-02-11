part of 'get_ready_orders_cubit.dart';

@freezed
class GetReadyOrdersState with _$GetReadyOrdersState {
  const factory GetReadyOrdersState.initial() = _Initial;
  const factory GetReadyOrdersState.loading() = _Loading;
  const factory GetReadyOrdersState.ready(List<AllReadyProductModel> model) =
      _Ready;
  const factory GetReadyOrdersState.error(ErrorModel error) = _Error;
}
