part of 'add_order_cubit.dart';

@freezed
class AddOrderState with _$AddOrderState {
  const factory AddOrderState.initial() = _Initial;
  const factory AddOrderState.loading() = _Loading;
  const factory AddOrderState.failure(ErrorModel error) = _Failure;
  const factory AddOrderState.success(AddOrderResponseModel message) = _Success;
}
