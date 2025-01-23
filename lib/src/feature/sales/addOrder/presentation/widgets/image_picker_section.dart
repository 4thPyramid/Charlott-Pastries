import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePickerSection extends StatelessWidget {
  const ImagePickerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('صور الطلب',
            style: AppStyles.s14.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            )),
        SizedBox(height: 10.h),
        Container(
          width: 354.w,
          height: 102.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.grey),
          ),
          child: const Center(
            child: IconButton(
              icon: Icon(
                Icons.add_photo_alternate_outlined,
                size: 30,
                color: AppColors.greyForText,
              ),
              onPressed: null,
            ),
          ),
        ),
      ],
    );
  }
}
