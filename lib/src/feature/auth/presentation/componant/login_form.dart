import 'package:charlot/core/common/functions/validator.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_field_button.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/email_and_phone_tap_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../intro/data/enum/user_type_enum.dart';
import '../../../intro/presentation/logic/user_type_cubit.dart';
import '../logic/login/login_cubit.dart';
import '../logic/login/login_state.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.userType});

  final String userType;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppStrings.loginSuccessfuly.tr()),
                backgroundColor: Colors.green,
              ),
            );
            navigateTo(context, state.response.key);
          } else if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage.message)),
            );
          }
        },
        child: SingleChildScrollView(
          child: SizedBox(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  EmailAndPhoneTapBarWidget(
                      tabController: _tabController,
                      title1: AppStrings.phoneNumber.tr(),
                      title2: AppStrings.email.tr()),
                  SizedBox(
                    height: 145.h,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        AuthTextFieldWidget(
                          titleOfField: AppStrings.phoneNumber.tr(),
                          prefixIcon: Icons.phone,
                          controller: _phoneController,
                          validator: Validator.validatePhoneNumber,
                          hintText: AppStrings.enterYourPhoneNumber.tr(),
                          isPassword: false,
                        ),
                        AuthTextFieldWidget(
                          titleOfField: AppStrings.email.tr(),
                          prefixIcon: Icons.email,
                          controller: _emailController,
                          validator: Validator.validateEmail,
                          hintText: AppStrings.enterYourEmail.tr(),
                          isPassword: false,
                        ),
                      ],
                    ),
                  ),
                  AuthTextFieldWidget(
                    titleOfField: AppStrings.password.tr(),
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _passwordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterYourPassword.tr(),
                    isPassword: true,
                  ),
                  CustomTextButton(
                    title: AppStrings.forgetPassword.tr(),
                    onTap: () {
                      context.push(RouterNames.forgetPasswordView, extra: {
                        'userType': widget.userType,
                      });
                    },
                  ),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      if (state is LoginLoading) {
                        return const CircularProgressIndicator();
                      }
                      return CustomButton(
                        width: 230.w,
                        height: 40.h,
                        text: AppStrings.signIn.tr(),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            final activeIndex = _tabController.index;
                            final identifier = activeIndex == 0
                                ? _phoneController.text
                                : _emailController.text;
                            final password = _passwordController.text;

                            context.read<LoginCubit>().login(
                                  widget.userType,
                                  identifier,
                                  password,
                                );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void navigateTo(BuildContext context, String key) {
    final userTypeCubit = context.read<UserTypeCubit>();

    if (key == 'manager') {
      userTypeCubit.selectUserType(UserTypeEnum.manager);
      userTypeCubit.login();
      context.go(RouterNames.managerBottomNavigationBarRoot);
    } else if (key == 'sales') {
      userTypeCubit.selectUserType(UserTypeEnum.sales);
      userTypeCubit.login();
      context.go(RouterNames.salesBottomNavigationBarRoot);
    } else if (key == 'chef') {
      userTypeCubit.selectUserType(UserTypeEnum.chef);
      userTypeCubit.login();
      context.go(RouterNames.chefBottomNavigationBarRoot);
    }
  }
}
