part of 'sales_order_details_cubit.dart';

@freezed
class SalesOrderDetailsState with _$SalesOrderDetailsState {
  const factory SalesOrderDetailsState.initial() = _Initial;
  const factory SalesOrderDetailsState.loading() = _Loading;
  const factory SalesOrderDetailsState.failure(ErrorModel error) = _Failure;
  const factory SalesOrderDetailsState.success(
      SalesOrder response) = _Success;
}
