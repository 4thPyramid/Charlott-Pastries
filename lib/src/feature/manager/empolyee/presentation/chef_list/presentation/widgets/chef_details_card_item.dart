import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../generated/app_strings.g.dart';

class ChefAndDeliveryDetailsCardItem extends StatelessWidget {
  final String name;
  final String status;
  final String avatarUrl;
  final int ordersCount;
  final String specialization;
  const ChefAndDeliveryDetailsCardItem({
    super.key,
    required this.name,
    required this.status,
    required this.avatarUrl,
    required this.ordersCount,
    required this.specialization,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 1),
              blurRadius: 1,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            title: Text(
              name,
              style: AppStyles.s14.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              specialization,
              style: AppStyles.s10.copyWith(
                color: AppColors.greyForText,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                status,
                style: AppStyles.s12.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('#${AppStrings.orderCount.tr()}',
                  style: AppStyles.s12.copyWith(
                    color: AppColors.darkTextGrey,
                    fontWeight: FontWeight.w400,
                  )),
              Text(
                '$ordersCount  ${AppStrings.orders.tr()} ',
                style: AppStyles.s12.copyWith(
                  color: AppColors.darkTextGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
