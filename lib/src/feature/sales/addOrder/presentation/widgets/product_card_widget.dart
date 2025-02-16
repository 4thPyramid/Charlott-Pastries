import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.onTap,
  });
  final String image;
  final String title;
  final String price;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 210.h,
        width: 165.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Container(
                width: 166.w,
                height: 140.h,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffEBEDF1),
                      Color(0xffFFF1F8),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Image.network(image),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  title,
                  style: AppStyles.s14.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 20.h),
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Container(
                    color: AppColors.primaryColor,
                    child: const Icon(
                      Icons.add,
                      color: AppColors.white,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  price,
                  style: AppStyles.s16.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'aDE'.tr(),
                  style: AppStyles.s12.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 5),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
