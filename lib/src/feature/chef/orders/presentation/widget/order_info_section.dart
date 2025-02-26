// lib/features/order_details/presentation/widgets/order_info_section.dart
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OrderInfoSection extends StatelessWidget {
  final String type;
  final String description;
  final String date;

  const OrderInfoSection({
    super.key,
    required this.type,
    required this.description,
    required this.date,
  });

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
          Text(
            AppStrings.orderDetails.tr(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text('${AppStrings.orderType.tr()}: ',
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
              Text('${AppStrings.orderDetails.tr()}: ',
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
              Text('${AppStrings.deliveryDate.tr()}: ',
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
