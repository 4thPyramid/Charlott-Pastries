import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:charlot/src/feature/auth/presentation/componant/forget_password_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key, required this.userType});
  final String userType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.h),
                const Center(child: AppImageView(AppAssets.blackLogo)),
                SizedBox(height: 40.h),
                CustomAuthAppBar(
                    title: AppStrings.forgetPassword.tr(),
                    subTitle:
                        AppStrings.enterYourEmailOrPhoneToResetPassword.tr()),
                SizedBox(height: 60.h),
                ForgetPasswordForm(
                  userType: userType,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
