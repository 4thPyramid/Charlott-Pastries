import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/src/feature/auth/presentation/componant/login_form.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 100.h),
            const Center(child: AppImageView(AppAssets.logo)),
            SizedBox(height: 40.h),
            const CustomAuthAppBar(
                title: "مرحبا بعودتك",
                subTitle:
                    "سعيدون لرؤيتك هنا مرة اخرى لاستخدامك التطبيق عليك تسجيل الدخول"),
            SizedBox(height: 40.h),
            const LoginForm(),
            HaveAnAccountWidget(
                onTap: () {},
                title1: "ليس لديك حساب؟ ",
                title2: "انشاء حساب جديد"),
          ],
        ),
      ),
    );
  }
}
