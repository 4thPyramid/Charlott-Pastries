import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/src/feature/intro/presentation/views/user_type_view.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/auth_text_form_field_widget.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/firest_and_last_name_row.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SalesRegisterView extends StatelessWidget {
  const SalesRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70.h),
            const CustomAuthAppBar(
              title: 'اهلا بك',
              subTitle: 'برجاء ملئ النموذج التالي لانشاء الحساب',
            ),
            SizedBox(height: 30.h),
            const Center(child: AppImageView(AppAssets.logo)),
            const FirestAndLastNameRow(),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: " ادخل البريد الالكتروني الخاص بك",
              titelOfField: "  البريد الالكتروني",
              prefixIcon: Icons.mail_outline_outlined,
            ),
            const AuthTextFieldWidget(
              isPassword: false,
              hintText: "ادخل رقم الجوال الخاص بك",
              titelOfField: " رقم الجوال",
              prefixIcon: Icons.phone_enabled_rounded,
            ),
            const AuthTextFieldWidget(
              isPassword: true,
              hintText: " ادخل كلمة المرور",
              titelOfField: "  كلمة المرور",
              prefixIcon: Icons.lock_outline,
            ),
            const AuthTextFieldWidget(
              isPassword: true,
              hintText: "تاكيد كلمة المرور",
              titelOfField: "تاكيد كلمة المرور",
              prefixIcon: Icons.lock_outline,
            ),
            Center(
              child: CustomButton(
                text: "انشاء حساب",
                onPressed: () {
                  context.go(RouterNames.otpView);
                },
              ),
            ),
            HaveAnAccountWidget(
              onTap: () {},
              title1: "لديك حساب بالفعل؟  ",
              title2: "تسجيل الدخول",
            ),
            SizedBox(height: 30.h),
          ],
        ),
      );
    }));
  }
}
