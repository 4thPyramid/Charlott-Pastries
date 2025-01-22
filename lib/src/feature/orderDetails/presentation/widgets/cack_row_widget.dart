import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CackRowWidget extends StatelessWidget {
  const CackRowWidget({
    super.key,
    required this.size,
    required this.directions,
    required this.notes,
  });

  final String size;
  final String directions;
  final String notes;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              "تورتة عيد ميلاد",
              style: AppStyles.s14.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "الحجم : $size ",
              style: AppStyles.s12,
            ),
            SizedBox(height: 5.h),
            Text(
              "المقاس : $directions ",
              style: AppStyles.s12,
            ),
            SizedBox(height: 16.h),
            Container(
              width: 253.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.greyForSelectTap),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              child: Text(
                notes,
                softWrap: true,
              ),
            )
          ],
        )
      ],
    );
  }
}
