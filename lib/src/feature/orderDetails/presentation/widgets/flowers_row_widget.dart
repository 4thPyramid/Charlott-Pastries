import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlowersRowWidget extends StatelessWidget {
  const FlowersRowWidget({
    super.key,
    required this.flowerType,
  });

  final String flowerType;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Image.asset(
            AppAssets.home,
            fit: BoxFit.cover,
            height: 60.h,
            width: 60.w,
          )),
      SizedBox(width: 16.w),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            flowerType,
            style: AppStyles.s14.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            AppStrings.addedToBirthdayCakeOrder.tr(),
            style: AppStyles.s12,
          ),
        ],
      )
    ]);
  }
}
