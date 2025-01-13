import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/src/feature/auth/presentation/componant/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 100.h),
        const Center(child: AppImageView(AppAssets.logo)),
        SizedBox(height: 20.h),
        const CustomAuthAppBar(
          title: "ادخل كلمة المرور الجديده",
          subTitle: "قم بانشاء كلمة مرور جديده",
        ),
        SizedBox(height: 20.h),
        ResetPasswordForm(),
      ],
    ));
  }
}
