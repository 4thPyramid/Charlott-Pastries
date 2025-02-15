import 'package:charlot/core/common/functions/validator.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/custom_sucess_pop.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/reset_password/reset_password_cubit.dart';
import '../logic/reset_password/reset_password_state.dart';
class ResetPasswordForm extends StatelessWidget {
  ResetPasswordForm({super.key, required this.userType, required this.otp, required this.identifier});
final String userType;
final String otp;
final String identifier;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          newPasswordSuccess: (message) {
            showSuccessPop(context,userType);
          },
          newPasswordError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error.message)),
            );
          },
        );
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            AuthTextFieldWidget(
              titleOfField:AppStrings.newPassword.tr(),
              prefixIcon: Icons.lock,
              controller: _passwordController,
              validator: Validator.validatePassword,
              hintText: AppStrings.newPassword.tr(),
              isPassword: true,
            ),
            AuthTextFieldWidget(
              titleOfField: AppStrings.confirmNewPassword,
              prefixIcon: Icons.lock,
              controller: _confirmPasswordController,
              validator: (value) {
                if (value != _passwordController.text) {
                  return "كلمة المرور غير متطابقة";
                }
                return null;
              },
              hintText: AppStrings.confirmPassword,
              isPassword: true,
            ),
            BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
              builder: (context, state) {
                return CustomButton(
                  text:AppStrings.changePassword.tr(),
                 // isLoading: state is NewPasswordLoading,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<ResetPasswordCubit>().resetPassword(
                            password: _passwordController.text,
                            userType:userType, otp:otp ,
                             identifier:identifier 
                          );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
