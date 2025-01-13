import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIntroImage extends StatelessWidget {
  const HomeIntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 352.w,
      height: 194.h,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.home),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(
              color: AppColors.white,
              indent: 110,
              endIndent: 110,
              thickness: 2,
              height: 1,
            ),
            Text(
              "حلويات",
              style: AppStyles.s24.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 44.sp,
                  color: AppColors.white),
            ),
            SizedBox(height: 10.h),
            Text(
              "لكل لحظه طعم مميز!",
              style: AppStyles.s14.copyWith(
                fontSize: 16.sp,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
