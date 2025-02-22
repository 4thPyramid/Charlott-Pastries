part of 'add_order_cubit.dart';

@freezed
// class AddOrderState with _$AddOrderState {
//   const factory AddOrderState.initial({@Default(false) bool isSameDay}) =
//       _Initial;
//   const factory AddOrderState.loading({@Default(false) bool isSameDay}) =
//       _Loading;
//   const factory AddOrderState.failure(ErrorModel error,
//       {@Default(false) bool isSameDay}) = _Failure;
//   const factory AddOrderState.success(AddOrderResponseModel message,
//       {@Default(false) bool isSameDay}) = _Success;
// }
class AddOrderState with _$AddOrderState {
  const factory AddOrderState.initial({@Default(false) bool isSameDay}) =
      _Initial;
  const factory AddOrderState.loading({@Default(false) bool isSameDay}) =
      _Loading;
  const factory AddOrderState.failure(ErrorModel error,
      {@Default(false) bool isSameDay}) = _Failure;
  const factory AddOrderState.success(AddOrderResponseModel message,
      {@Default(false) bool isSameDay}) = _Success;
}
