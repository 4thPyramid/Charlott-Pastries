import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddOrderHeader extends StatelessWidget {
  const AddOrderHeader({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                image,
                height: 240.h,
              ),
              Container(
                height: 50.h,
                decoration: const BoxDecoration(
                  color: AppColors.scaffoldColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.scaffoldColor,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 210.h,
            right: 20.w,
            left: 20.w,
            child: Container(
              width: 328.w,
              height: 56.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  title,
                  style: AppStyles.s16.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
