import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/src/feature/auth/presentation/componant/otp_form.dart';
import 'package:charlot/src/feature/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../generated/app_strings.g.dart';

class OtpViewForEmail extends StatelessWidget {

  const OtpViewForEmail({super.key ,required this.userType});
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
              OtpForm(
                userType: userType,
              ),
              HaveAnAccountWidget(
                  onTap: () {
                    context.pop();
                  },
                  title1: AppStrings.codeNotSend.tr(),
                  title2: AppStrings.resend.tr()
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
