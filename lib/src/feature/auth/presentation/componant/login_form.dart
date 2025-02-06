
import 'package:charlot/core/common/functions/validator.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_field_button.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/services/service_locator.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/email_and_phone_tap_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
      create: (context) =>  getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(

              const SnackBar(content: Text('تم تسجيل الدخول بنجاح'),backgroundColor: Colors.green,),
            );
            navigateTo(context,state.response.key);
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
                  EmailAndPhoneTapBarWidget(tabController: _tabController),
                  SizedBox(
                    height: 145.h,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        AuthTextFieldWidget(
                          titleOfField:AppStrings.phoneNumber,
                          prefixIcon: Icons.phone,
                          controller: _phoneController,
                          validator: Validator.validatePhoneNumber,
                          hintText:AppStrings.enterYourPhoneNumber,
                          isPassword: false,
                        ),
                        AuthTextFieldWidget(
                          titleOfField: AppStrings.email,
                          prefixIcon: Icons.email,
                          controller: _emailController,
                          validator: Validator.validateEmail,
                          hintText: AppStrings.enterYourEmail,
                          isPassword: false,
                        ),
                      ],
                    ),
                  ),
                  AuthTextFieldWidget(
                    titleOfField:AppStrings.password,
                    prefixIcon: Icons.lock_open_outlined,
                    controller: _passwordController,
                    validator: Validator.validatePassword,
                    hintText: AppStrings.enterPasswordHint,
                    isPassword: true,
                  ),
                  CustomTextButton(
                    title: AppStrings.forgetPassword,
                    onTap: () {
                      context.go(RouterNames.forgetPasswordView);
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
                        text: AppStrings.signIn,
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
    if (key == 'manager') {
      context.go(RouterNames.managerBottomNavigationBarRoot);
    } else if (key == 'sales') {
      context.go(RouterNames.salesBottomNavigationBarRoot);
    } else if (key == 'chef') {
      print('chef');
      context.go(RouterNames.ChefBottomNavigationBarRoot);
  }
}
    }