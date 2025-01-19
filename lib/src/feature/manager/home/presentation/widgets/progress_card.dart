import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/routes/router_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'progress_circle.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({
    super.key,
    required this.percentage,
    required this.title,
  });
  final double percentage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.w,
            ),
            child: ProgressCircle(
              percentage: percentage,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppStyles.s16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      width: 90.w,
                      height: 30.h,
                      text: ' الطلبات المكتمله',
                      onPressed: () {
                        context.push(
                          RouterNames.managerCompletedOrders,
                        );
                      },
                      backgroundColor: AppColors.white,
                      textStyle: AppStyles.s10.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    CustomButton(
                      width: 90.w,
                      height: 30.h,
                      text: 'الطلبات المنتهيه',
                      onPressed: () {
                        context.push(
                          RouterNames.managerFinishOrders,
                        );
                      },
                      backgroundColor: AppColors.white,
                      textStyle: AppStyles.s10.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
