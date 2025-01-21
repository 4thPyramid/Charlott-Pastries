import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatesContainerWidget extends StatelessWidget {
  const DatesContainerWidget({
    super.key,
    required this.startData,
    required this.endData,
  });

  final String startData;
  final String endData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
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
                  "موعد استلام الاوردر",
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
            Row(
              children: [
                Text(
                  "موعد تسليم الاوردر",
                  style: AppStyles.s14,
                ),
                const Spacer(),
                Text(
                  endData,
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
