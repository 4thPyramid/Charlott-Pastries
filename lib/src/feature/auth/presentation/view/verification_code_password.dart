import 'package:charlot/core/common/widgets/custom_auth_app_bar.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../componant/otp_form_for_password.dart';

class VerificationCodePassword extends StatelessWidget {
  const VerificationCodePassword(
      {super.key, required this.userType, required this.identifier});

  final String userType;
  final String identifier;

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
                identifier: identifier,
              ),
              // HaveAnAccountWidget(
              //     onTap: () {},
              //     title1: AppStrings.didNotReceiveCode.tr(),
              //     title2: AppStrings.resend.tr()),
            ],
          ),
        ),
      ),
    );
  }
}
