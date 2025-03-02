import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatesContainerWidget extends StatelessWidget {
  const DatesContainerWidget({
    super.key,
    required this.startData,
    required this.from,
    required this.to,
  });

  final String startData;
  final String from;
  final String to;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 204.h,
      width: 353.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  AppStrings.orderPickupTime.tr(),
                  style: AppStyles.s14,
                ),
                const Spacer(),
                Text(
                  startData,
                  style: AppStyles.s14.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Divider(),
            SizedBox(height: 16.h),
            Row(
              children: [
                Text(
                  AppStrings.from.tr(),
                  style: AppStyles.s14,
                ),
                const Spacer(),
                Text(
                  from,
                  style: AppStyles.s14.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Text(
                  AppStrings.to.tr(),
                  style: AppStyles.s14,
                ),
                const Spacer(),
                Text(
                  to,
                  style: AppStyles.s14.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
