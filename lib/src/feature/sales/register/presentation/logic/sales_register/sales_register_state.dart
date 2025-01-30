
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';

part 'sales_register_state.freezed.dart';
@freezed
class SalesRegisterState<T> with _$SalesRegisterState {
  factory SalesRegisterState.initial() = SalesRegisterInitial;

  factory SalesRegisterState.loading() = SalesRegisterLoading;

  factory SalesRegisterState.failure(ErrorModel errorMessage) =
      SalesRegisterFailure;

  factory SalesRegisterState.success(String message) = SalesRegisterSuccess;
}
