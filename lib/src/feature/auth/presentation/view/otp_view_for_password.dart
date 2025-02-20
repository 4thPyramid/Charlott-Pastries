import 'package:charlot/generated/app_strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/common/widgets/custom_auth_app_bar.dart';
import '../../../../../core/routes/router_names.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_image_view.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../generated/app_strings.g.dart';
import '../componant/otp_form_for_password.dart';
import '../widgets/have_an_account_widget.dart';

class OtpViewForPassword extends StatelessWidget {
  const OtpViewForPassword({super.key, required this.userType});
  final String userType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const Center(child: AppImageView(AppAssets.blackLogo)),
              SizedBox(height: 40.h),
              const CustomAuthAppBar(
                title: AppStrings.enterVerificationCode,
                subTitle: AppStrings.enterVerificationCodeToAccessAccount,
              ),
              SizedBox(height: 40.h),
              OtpFormForPassword(
                userType: userType,
                identifier: "",
              ),
              HaveAnAccountWidget(
                  onTap: () {
                    context.push(RouterNames.verifyCodeView,
                        extra: {'userType': userType});
                  },
                  title1: "الم يصلك الرمز؟ ",
                  title2: "اعادة الارسال"),
            ],
          ),
        ),
      ),
    );
  }
}
