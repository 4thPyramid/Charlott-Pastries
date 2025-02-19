import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class CustomCardStatistics extends StatelessWidget {
  const CustomCardStatistics({
    super.key,
    required this.number,
    required this.name,
    this.onPressed,
    this.width,
    this.height,
  });

  final int number;
  final String name;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 70.w,
      //  height: height ?? 80.r,
      margin: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color.fromARGB(255, 193, 171, 171).withAlpha(70),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 24.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(number.toString(),
                  style: AppStyles.s12.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.w700)),
              SizedBox(height: 5.h),
              Text(name,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.s10.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.w700)),
            ],
          ),
        ),
      ),
    );
  }
}
