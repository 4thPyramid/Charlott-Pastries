// lib/features/order_details/presentation/widgets/order_info_section.dart
import 'package:charlot/core/common/widgets/custom_app_bar.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInfoSection extends StatelessWidget {
  final String type;
  final String description;
  final String date;

  const OrderInfoSection({
    Key? key,
    required this.type,
    required this.description,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'تفاصيل الطلب',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text('نوع الطلب: ',
                  style: AppStyles.s20.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600)),
              Text(type,
                  style: AppStyles.s16.copyWith(
                      color: AppColors.black, fontWeight: FontWeight.w600)),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text('وصف الطلب: ',
                  style: AppStyles.s20.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600)),
              Text(description,
                  style: AppStyles.s16.copyWith(
                      color: AppColors.black, fontWeight: FontWeight.w600)),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text('تاريخ التسليم: ',
                  style: AppStyles.s20.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600)),
              Text(date,
                  style: AppStyles.s16.copyWith(
                      color: AppColors.black, fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }
}
