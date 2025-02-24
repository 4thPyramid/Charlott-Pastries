import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/core/utils/main_function.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/router_names.dart';

showSuccessPop(
  BuildContext context,
  String userType,
) {
  customAlertDialog(
    marginHPadding: 20.h,
    marginVPadding: 20.h,
    hPadding: 12.w,
    vPadding: 12.h,
    context: context,
    content: Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0.h),
      child: Column(
        children: [
          const Center(
            child: AppImageView(
              AppAssets.blackLogo,
              // width: 50.w,
              //  height: 50.h,
            ),
          ),
          SizedBox(height: 13.h),
          Text(
            AppStrings.verificationSuccessful.tr(),
            style: AppStyles.s20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          // SizedBox(height: 39.h),
          // Text(
          //   AppStrings.signInSuccessfully,
          //   textAlign: TextAlign.center,
          //   style: AppStyles.s16.copyWith(
          //     fontWeight: FontWeight.w400,
          //   ),
          // ),
          SizedBox(height: 20.h),
          CustomButton(
            height: 40.h,
            width: 180.w,
            text: AppStrings.next.tr(),
            textStyle: AppStyles.s16.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
            onPressed: () {
              //Navigator.pop(context);
              context.go(RouterNames.loginView, extra: {'userType': userType});
            },
          )
        ],
      ),
    ),
  );
}
