import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SalesHomeNewOrders extends StatelessWidget {
  const SalesHomeNewOrders({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 165.h,
        width: 353.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.newOrder),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "All New Orders",
              style: AppStyles.s14,
            ),
            SizedBox(height: 10.h),
            Text("  You Have $number New Orders",
                style: AppStyles.s24.copyWith(fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
