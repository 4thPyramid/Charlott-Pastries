
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_auth_app_bar.dart';
import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_image_view.dart';
import '../../../../../../core/utils/app_strings.dart';
import '../../../../auth/presentation/widgets/auth_text_form_field_widget.dart';
import '../../../../auth/presentation/widgets/firest_and_last_name_row.dart';

class SalesRegisterForm extends StatelessWidget {
  const SalesRegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAuthAppBar(
          title: AppStrings.welcom,
          subTitle: AppStrings.fillFormToCreateAccount,
        ),
        SizedBox(height: 30.h),
        const Center(child: AppImageView(AppAssets.logo)),
        const FirstAndLastNameRow(),
        const AuthTextFieldWidget(
          isPassword: false,
          hintText: AppStrings.enterYourEmail,
          titleOfField: AppStrings.email,
          prefixIcon: Icons.mail_outline_outlined,
        ),
        const AuthTextFieldWidget(
          isPassword: false,
          hintText: AppStrings.enterYourPhoneNumber,
          titleOfField: AppStrings.phoneNumber,
          prefixIcon: Icons.phone_enabled_rounded,
        ),
        const AuthTextFieldWidget(
          isPassword: true,
          hintText: AppStrings.enterPasswordHint,
          titleOfField: AppStrings.password,
          prefixIcon: Icons.lock_outline,
        ),
        const AuthTextFieldWidget(
          isPassword: true,
          hintText: AppStrings.confirmPassword,
          titleOfField: AppStrings.confirmPassword,
          prefixIcon: Icons.lock_outline,
        ),
        Center(
          child: CustomButton(
            text: AppStrings.register,
            onPressed: () {
              print("Register");
              context.push(RouterNames.otpView);
            },
          ),
        ),
      ],
    );
  }
}
