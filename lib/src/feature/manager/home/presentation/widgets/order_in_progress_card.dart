import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

Widget buildOrderCard({
  required Color color,
  required Color progressColor,
  required String orderName,
  required String orderType,
  required double progress,
}) {
  return Container(
    width: 187.w,
    margin: EdgeInsets.only(left: 16.r),
    padding: EdgeInsets.all(10.r),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              orderType,
              style: AppStyles.s10.copyWith(color: AppColors.whiteGreyForText),
            ),
            const AppImageView(AppAssets.inProgressIcon)
          ],
        ),
        const SizedBox(height: 8),
        // وصف الطلب
        Text(orderName, style: AppStyles.s12.copyWith(color: AppColors.black)),
        const SizedBox(height: 16),
        Container(
          width: 250,
          height: 8,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
          ),
        ),
      ],
    ),
  );
}
