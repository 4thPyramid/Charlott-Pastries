import 'package:charlot/src/feature/manager/profile/presentation/logic/delete_account_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/common/functions/validator.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../generated/app_strings.g.dart';
import '../../../../auth/presentation/widgets/auth_text_form_field_widget.dart';
import '../logic/delete_account_cubit.dart';

class ChangePasswordComponent extends StatefulWidget {
  const ChangePasswordComponent({super.key});

  @override
  State<ChangePasswordComponent> createState() => _ChangePasswordComponentState();
}

class _ChangePasswordComponentState extends State<ChangePasswordComponent> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add form key for validation

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeleteAccountCubit>(),
      child: BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (message) {
              // Show success message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.green),
              );
              // Optional: Navigate back or clear fields
              Navigator.pop(context);
            },
            error: (error) {
              // Show error message
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
                    titleOfField: AppStrings.password.tr(),
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _oldPasswordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterPasswordHint.tr(),
                    isPassword: true,
                  ),
                  SizedBox(height: 20.h),
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.newPassword.tr(),
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _newPasswordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterPasswordHint.tr(),
                    isPassword: true,
                  ),
                  SizedBox(height: 20.h),
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.confirmNewPassword.tr(),
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _confirmNewPasswordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterPasswordHint.tr(),
                    isPassword: true,
                  ),
                  SizedBox(height: 100.h),
                  Align(
                    child: state.maybeWhen(
                      loading: () => const CircularProgressIndicator(),
                      orElse: () => CustomButton(
                        text: AppStrings.confirmPassword.tr(),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<DeleteAccountCubit>().changePassword(
                                  _oldPasswordController.text,
                                  _newPasswordController.text,
                                  _confirmNewPasswordController.text,
                                  userType: 'manager'
                                );
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