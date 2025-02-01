import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/errors/error_model.dart';
part 'chef_register_state.freezed.dart';

@freezed
class ChefRegisterState<T> with _$ChefRegisterState {
  factory ChefRegisterState.initial() = ChefRegisterInitial;

  factory ChefRegisterState.loading() = ChefRegisterLoading;

  factory ChefRegisterState.failure(ErrorModel errorMessage) =
      ChefRegisterFailure;

  factory ChefRegisterState.success(String message) = ChefRegisterSuccess;
}
