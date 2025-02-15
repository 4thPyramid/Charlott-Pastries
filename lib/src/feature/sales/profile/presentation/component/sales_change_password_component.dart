import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/manager/profile/presentation/logic/delete_account_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/functions/validator.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../../auth/presentation/widgets/auth_text_form_field_widget.dart';
import '../../../../manager/profile/presentation/logic/delete_account_cubit.dart';

class SalesChangePasswordComponent extends StatefulWidget {
  const SalesChangePasswordComponent({super.key});

  @override
  State<SalesChangePasswordComponent> createState() =>
      _SalesChangePasswordComponentState();
}

class _SalesChangePasswordComponentState
    extends State<SalesChangePasswordComponent> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeleteAccountCubit>(),
      child: BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.green),
              );
              Navigator.pop(context);
            },
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(error.message)),
              );
            },
          );
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.password,
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _oldPasswordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterPasswordHint,
                    isPassword: true,
                  ),
                  SizedBox(height: 20.h),
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.newPassword,
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _newPasswordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterPasswordHint,
                    isPassword: true,
                  ),
                  SizedBox(height: 20.h),
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.confirmNewPassword,
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _confirmNewPasswordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterPasswordHint,
                    isPassword: true,
                  ),
                  SizedBox(height: 100.h),
                  Align(
                    child: state.maybeWhen(
                      loading: () => const CircularProgressIndicator(),
                      orElse: () => CustomButton(
                        text: AppStrings.confirmPassword,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<DeleteAccountCubit>().changePassword(
                                _oldPasswordController.text,
                                _newPasswordController.text,
                                _confirmNewPasswordController.text,
                                userType: 'sales');
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
    super.dispose();
  }
}
