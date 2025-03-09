part of 'update_order_cubit.dart';

abstract class UpdateOrderState extends Equatable {
  @override
  List<Object?> get props => [];
}

class UpdateOrderInitial extends UpdateOrderState {}

class UpdateOrderLoading extends UpdateOrderState {}

class UpdateOrderSuccess extends UpdateOrderState {
  final Map<String, dynamic> response;

  UpdateOrderSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

class UpdateOrderFailure extends UpdateOrderState {
  final String error;

  UpdateOrderFailure(this.error);

  @override
  List<Object?> get props => [error];
}
