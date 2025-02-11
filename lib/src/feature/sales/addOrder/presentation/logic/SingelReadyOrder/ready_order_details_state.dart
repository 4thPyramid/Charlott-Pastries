part of 'ready_order_details_cubit.dart';

@freezed
class ReadyOrderDetailsState with _$ReadyOrderDetailsState {
  const factory ReadyOrderDetailsState.initial() = _Initial;
  const factory ReadyOrderDetailsState.loading() = _Loading;
  const factory ReadyOrderDetailsState.ready(SingleProductModel model) = _Ready;
  const factory ReadyOrderDetailsState.error(ErrorModel error) = _Error;
}
