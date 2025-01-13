import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/src/feature/auth/presentation/componant/forget_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 100.h),
            const Center(child: AppImageView(AppAssets.logo)),
            SizedBox(height: 40.h),
            const CustomAuthAppBar(
              title: "نسيت كلمة المرور",
              subTitle:
                  "ادخل رقم الجوال او البريد الالكتروني المسجل لدينا لتعين كلمة المرور الجديدة",
            ),
            SizedBox(height: 40.h),
            const ForgetPasswordForm(),
          ],
        ),
      ),
    );
  }
}
