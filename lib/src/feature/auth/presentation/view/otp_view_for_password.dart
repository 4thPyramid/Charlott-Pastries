import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/common/widgets/custom_auth_app_bar.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_image_view.dart';
import '../componant/otp_form_for_password.dart';

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
               CustomAuthAppBar(
                title: AppStrings.enterVerificationCode.tr(),
                subTitle: AppStrings.enterVerificationCodeToAccessAccount.tr(),
              ),
              SizedBox(height: 40.h),
              OtpFormForPassword(
                userType: userType,
                identifier: "",
              ),
              // HaveAnAccountWidget(
              //     onTap: () {
              //       context.push(RouterNames.verifyCodeView,
              //           extra: {'userType': userType});
              //     },
              //     title1: "الم يصلك الرمز؟ ",
              //     title2: "اعادة الارسال"),
            ],
          ),
        ),
      ),
    );
  }
}
