import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/change_password_uc.dart';
import '../../domain/usecase/delete_account_uc.dart';
import '../../domain/usecase/logout_use_case.dart';
import 'delete_account_state.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  final DeleteAccountUC _deleteAccountUC;
  final LogoutUseCase _logoutUseCase;
  final ChangePasswordUc _changePasswordUC;
  DeleteAccountCubit(this._deleteAccountUC, this._logoutUseCase, this._changePasswordUC) : super(const DeleteAccountState.initial());

  Future<void> deleteAccount() async {
    emit(const DeleteAccountState.loading());
    final result = await _deleteAccountUC.call();
    result.fold(
      (l) => emit(DeleteAccountState.error(l)),
      (r) => emit(DeleteAccountState.success(r)),
    );
  }

  Future<void> logout() async {
    emit(const DeleteAccountState.loading());
    final result = await _logoutUseCase.call();
    result.fold(
      (l) => emit(DeleteAccountState.error(l)),
      (r) => emit(DeleteAccountState.success(r)),
    );
  }

   Future<void> changePassword(String? oldPassword,
  String? newPassword,
  String? confirmPassword,) async {
    emit(const DeleteAccountState.loading());
    final result = await _changePasswordUC.changePassword( oldPassword, newPassword, confirmPassword);
    result.fold(
      (l) => emit(DeleteAccountState.error(l)),
      (r) => emit(DeleteAccountState.success(r)),
    );
  }

}