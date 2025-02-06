import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                color: AppColors.grey,
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
            children: [
              Text('#عدد الطلبات المنفذه',
                  style: AppStyles.s12.copyWith(
                    color: AppColors.darkTextGrey,
                    fontWeight: FontWeight.w400,
                  )),
              const Spacer(),
              _buildInfoItem(
                Icons.date_range_outlined,
                '$ordersCount من الطلبات',
              ),
            ],
          ),
          const SizedBox(height: 16),
         
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
