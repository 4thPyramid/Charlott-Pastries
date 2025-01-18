import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

Widget newestOrderBuildInfoField(String label, String value) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 10.w),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: AppStyles.s14.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            )),
        const Spacer(),
        Expanded(
          child: Text(value,
              style: AppStyles.s12.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.darkTextGrey,
              )),
        ),
      ],
    ),
  );
}