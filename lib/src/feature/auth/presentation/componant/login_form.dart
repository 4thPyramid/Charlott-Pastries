import 'dart:developer';

import 'package:charlot/core/common/functions/validator.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/common/widgets/custom_text_field_button.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/email_and_phone_tap_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
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
    late String inputValue;

    return SingleChildScrollView(
      child: SizedBox(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              EmailAndPhoneTapBarWidget(tabController: _tabController),
              SizedBox(
                height: 120.h,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    AuthTextFieldWidget(
                      titelOfField: "رقم الجوال",
                      prefixIcon: Icons.phone,
                      controller: _phoneController,
                      validator: Validator.validatePhoneNumber,
                      hintText: "ادخل رقم الجوال",
                      isPassword: false,
                    ),
                    AuthTextFieldWidget(
                      titelOfField: "البريد الإلكتروني",
                      prefixIcon: Icons.email,
                      controller: _emailController,
                      validator: Validator.validateEmail,
                      hintText: "ادخل البريد الإلكتروني",
                      isPassword: false,
                    ),
                  ],
                ),
              ),
              AuthTextFieldWidget(
                titelOfField: "كلمة المرور",
                prefixIcon: Icons.lock_open_outlined,
                controller: _phoneController,
                validator: Validator.validatePassword,
                hintText: 'ادخل كلمة المرور',
                isPassword: true,
              ),
              CustomTextButton(
                  title: 'نسيت كلمة السر ؟',
                  onTap: () {
                    context.go(
                      RouterNames.forgetPasswordView,
                    );
                  }),
              CustomButton(
                width: 230.w,
                height: 40.h,
                text: 'تسجيل الدخول',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final activeIndex = _tabController.index;

                    if (activeIndex == 0) {
                      inputValue = _phoneController.text;
                    } else {
                      inputValue = _emailController.text;
                    }

                    log(inputValue);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
