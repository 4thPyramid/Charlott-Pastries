
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_assets.dart';
import '../../../../../../core/utils/app_image_view.dart';
import '../../../../../../core/utils/main_function.dart';

acceptOrderPop(
  BuildContext context,
  {required String title, required String buttonTitle,required void Function() onPressed}) 
 {
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
              AppAssets.successIcon,
              // width: 50.w,
              //  height: 50.h,
            ),
          ),
          SizedBox(height: 36.h),
          Text(
            title,
            style: AppStyles.s20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        
          SizedBox(height: 20.h),
          CustomButton(
            height: 40.h,
            width: 230.w,
            text: buttonTitle,
            textStyle: AppStyles.s16.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w700,
            ),
            onPressed: onPressed,
          )
        ],
      ),
    ),
  );
}
