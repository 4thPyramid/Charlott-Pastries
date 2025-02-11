part of 'ready_ordre_cubit.dart';

@freezed
class ReadyOrdreState with _$ReadyOrdreState {
  const factory ReadyOrdreState.initial() = _Initial;
  const factory ReadyOrdreState.loading() = _Loading;
  const factory ReadyOrdreState.ready(StoreReadyOrdersModel model) = _Ready;
  const factory ReadyOrdreState.error(ErrorModel error) = _Error;
}
