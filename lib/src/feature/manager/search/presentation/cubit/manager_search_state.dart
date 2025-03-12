part of 'manager_search_cubit.dart';

@freezed
class ManagerSearchState with _$ManagerSearchState {
  const factory ManagerSearchState.initial() = _Initial;
  const factory ManagerSearchState.loading() = _Loading;
  const factory ManagerSearchState.loaded(List<ManagerSearchModel> sales) =
      _Loaded;
  const factory ManagerSearchState.error(ErrorModel error) = _Erorr;
}
