part of 'sales_search_cubit.dart';

@freezed
class SalesSearchState with _$SalesSearchState {
  const factory SalesSearchState.initial() = _Initial;
  const factory SalesSearchState.loading() = _Loading;
  const factory SalesSearchState.loaded(List<SalesSearchModel> sales) = _Loaded;
  const factory SalesSearchState.error(ErrorModel error) = _Erorr;
}
