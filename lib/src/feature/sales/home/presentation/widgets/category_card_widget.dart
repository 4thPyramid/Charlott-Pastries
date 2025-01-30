import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onTap,
  });
  final String image;
  final String title;
  final String subTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 112.h,
        width: 112.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            SizedBox(height: 5.h),
            Text(title, style: TextStyle(fontSize: 8.sp)),
            SizedBox(height: 5.h),
            Text(subTitle,
                maxLines: 1,
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
