import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsField extends StatelessWidget {
  const DetailsField({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text
          ,
          style: AppStyles.s14.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          color: AppColors.white,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: AppColors.white,
              prefixIcon: const Padding(
                  padding: EdgeInsets.only(bottom: 70),
                  child:
                      Icon(Icons.description_outlined, color: AppColors.blue)),
              hintText: 'ادخل تفاصيل الطلب',
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.primaryColor),
              ),
            ),
            maxLines: 4,
          ),
        ),
      ],
    );
  }
}