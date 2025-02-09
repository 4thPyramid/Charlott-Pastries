import 'dart:io';

import 'package:charlot/core/common/functions/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_auth_app_bar.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/common/widgets/custom_circle_to_upload_image.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../auth/presentation/widgets/auth_text_form_field_widget.dart';
import '../../../../auth/presentation/widgets/firest_and_last_name_row.dart';
import '../logic/sales_register/sales_register_cubit.dart';
import '../logic/sales_register/sales_register_state.dart';

class SalesRegisterForm extends StatefulWidget {
  const SalesRegisterForm({
    super.key,
  });

  @override
  State<SalesRegisterForm> createState() => _SalesRegisterFormState();
}

class _SalesRegisterFormState extends State<SalesRegisterForm> {
  final TextEditingController fNameController = TextEditingController();

  final TextEditingController lNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  File? selectedImage;

  bool _passwordsMatch() {
    return passwordController.text == confirmPasswordController.text;
  }

  bool _validateInputs() {
    if (!formKey.currentState!.validate()) return false;

    if (!_passwordsMatch()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('كلمات المرور غير متطابقة')),
      );
      return false;
    }
    return true;
  }

  void _handleRegister() {
    if (_validateInputs()) {
      context.read<SalesRegisterCubit>().register(
            firstName: fNameController.text,
            lastName: lNameController.text,
            email: emailController.text,
            phone: phoneController.text,
            password: passwordController.text,
            image: selectedImage,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SalesRegisterCubit, SalesRegisterState>(
        listener: (context, state) {
      state.whenOrNull(
        success: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message),backgroundColor: Colors.green),
          );
          context.push(RouterNames.otpViewForEmail, extra: {
            'userType': 'sales',
          });
        },
        failure: (error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message)),
          );
        },
      );
    }, builder: (context, state) {
      return Form(
        key: formKey,
        child: Column(
          children: [
            const CustomAuthAppBar(
              title: AppStrings.welcome,
              subTitle: AppStrings.fillFormToCreateAccount,
            ),
            SizedBox(height: 30.h),
            Center(
              child: CustomPersonalCircleImage(
                onImageSelected: (file) {
                  setState(() {
                    selectedImage = file;
                  });
                },
              ),
            ),
            FirstAndLastNameRow(
              firstNameController: fNameController,
              lastNameController: lNameController,
            ),
            AuthTextFieldWidget(
              isPassword: false,
              validator: Validator.validateEmail,
              controller: emailController,
              hintText: AppStrings.enterYourEmail,
              titleOfField: AppStrings.email,
              prefixIcon: Icons.mail_outline_outlined,
            ),
            AuthTextFieldWidget(
              isPassword: false,
              validator: Validator.validatePhoneNumber,
              controller: phoneController,
              hintText: AppStrings.enterYourPhoneNumber,
              titleOfField: AppStrings.phoneNumber,
              prefixIcon: Icons.phone_enabled_rounded,
            ),
            AuthTextFieldWidget(
              isPassword: true,
              validator: Validator.validatePassword,
              controller: passwordController,
              hintText: AppStrings.enterPasswordHint,
              titleOfField: AppStrings.password,
              prefixIcon: Icons.lock_outline,
            ),
            AuthTextFieldWidget(
              isPassword: true,
              validator: Validator.validatePassword,
              controller: confirmPasswordController,
              hintText: AppStrings.confirmPassword,
              titleOfField: AppStrings.confirmPassword,
              prefixIcon: Icons.lock_outline,
            ),
            SizedBox(height: 20.h),
            if (state is SalesRegisterLoading)
              const Center(child: CircularProgressIndicator())
            else
              Center(
                child: CustomButton(
                  text: AppStrings.register,
                  onPressed: _handleRegister,
                ),
              ),
            SizedBox(height: 20.h),
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    fNameController.dispose();
    lNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
