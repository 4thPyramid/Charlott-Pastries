import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CakeRowWidget extends StatelessWidget {
  const CakeRowWidget({
    super.key,
    required this.notes,
    required this.orderType, required this.image,
  });

  final String notes;
  final String orderType;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 60.h,
              width: 60.w,
            )),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              orderType,
              style: AppStyles.s14.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5.h),
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
