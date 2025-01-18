import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem(
      {super.key,
      required this.number,
      required this.title,
      required this.icon,
      this.onTap});
  final String number;
  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 100.h,
          width: 150.w,
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      number,
                      style: AppStyles.s24.copyWith(fontSize: 30.sp),
                    ),
                    Icon(
                      icon,
                      color: AppColors.primaryColor,
                      size: 40,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  title,
                  style: AppStyles.s18
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 18.sp),
                ),
              ],
            ),
          )),
    );
  }
}
