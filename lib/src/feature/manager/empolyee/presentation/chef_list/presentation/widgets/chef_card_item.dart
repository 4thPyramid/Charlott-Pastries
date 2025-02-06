import 'package:charlot/core/common/widgets/custom_btn.dart';
import 'package:charlot/core/theme/app_colors.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/routes/router_names.dart';
import '../../../../../../../../core/utils/app_strings.dart';
import '../../../../data/model/employee_response.dart';

class ChefAndDeliveryCard extends StatelessWidget {
  final Employee employee;
  final String from;
  final int orderId;
  const ChefAndDeliveryCard({
    super.key,
    required this.employee,
    required this.from,
     required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
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
              backgroundImage: NetworkImage(employee.image ?? 
         'https://imgs.search.brave.com/J5-KJNoclGIgO9mgbMuULm8xw_ri-hvqZYOyhc50Q64/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzE3LzM0LzY3/LzM2MF9GXzIxNzM0/Njc4Ml83WHBDVHQ4/YkxOSnF2VkFhRFpK/d3Zaam0wZXBRbWo2/ai5qcGc',

              ),
            ),
            title: Text(
              '${employee.firstName} ${employee.lastName}',
              style: AppStyles.s14.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              employee.specialization ?? '',
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
                color: employee.canTakeOrder == 'متاح'
                    ? AppColors.green
                    : AppColors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                employee.canTakeOrder,
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
                '${employee.orderCount} من الطلبات',
              ),
            ],
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
                width: 160.w,
                text: AppStrings.viewDetails,
                  textStyle: AppStyles.s14.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w700,
          ),
                onPressed: () {
                  if(from == 'delivery') {
                    context.push(RouterNames.deliveryBoyDetails,extra: {
                      'deliveryId': employee.id,
                      'orderId': orderId,
                    });
                  } else if (from == 'chef') {
                    context.push(RouterNames.chefDetails,extra: {
                      'chefId': employee.id,
                      'orderId': orderId,
                    });
                  }
                }),
          )
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
