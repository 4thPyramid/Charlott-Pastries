import 'package:charlot/core/common/functions/validator.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/email_and_phone_tap_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_strings.dart';
import '../logic/reset_password/reset_password_cubit.dart';
import '../logic/reset_password/reset_password_state.dart';
class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key, required this.userType});
final String userType;
  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    
  }

  @override
  void dispose() {
    _tabController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          forgetPasswordSuccess: (message) {
            context.go(RouterNames.verifyCodeView,extra: {'userType': widget.userType , 'identifier':  _tabController.index == 0
                          ? _phoneController.text
                          : _emailController.text
          });
          },
          forgetPasswordError: (error) {
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
            EmailAndPhoneTapBarWidget(
              tabController: _tabController,
              title1: AppStrings.phoneNumber.tr(),
              title2: AppStrings.email,
            ),
            SizedBox(
              height: 120.h,
              child: TabBarView(
                controller: _tabController,
                children: [
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.phoneNumber,
                    prefixIcon: Icons.phone,
                    controller: _phoneController,
                    validator: Validator.validatePhoneNumber,
                    hintText: AppStrings.enterYourPhoneNumber.tr(),
                    isPassword: false,
                  ),
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.email,
                    prefixIcon: Icons.email,
                    controller: _emailController,
                    validator: Validator.validateEmail,
                    hintText: AppStrings.enterYourEmail.tr(),
                    isPassword: false,
                  ),
                ],
              ),
            ),
            BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
              builder: (context, state) {
                return CustomButton(
                  text: AppStrings.hintChangePassword.tr(),
                 // isLoading: state is ForgetPasswordLoading,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final activeIndex = _tabController.index;
                      final identifier = activeIndex == 0
                          ? _phoneController.text
                          : _emailController.text;

                      context.read<ResetPasswordCubit>().forgetPassword(
                            identifier: identifier,
                            userType: widget.userType,


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