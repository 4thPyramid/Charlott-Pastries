import 'package:charlot/core/utils/app_strings.dart';
import 'package:charlot/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../../../core/theme/app_colors.dart';

class OrdersStatisticsRow extends StatelessWidget {
  const OrdersStatisticsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white.withAlpha(70),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisSize: MainAxisSize.min,
          children: [
            CustomCardStatistics(
                number: 453,
                name: AppStrings.orderCompleted,
                onPressed: () {
                  context.push(RouterNames.managerCompletedOrders);
                }),
            Container(
              color: AppColors.greyForBackground,
              width: 0.5.w,
              height: 99.h,
            ),
            CustomCardStatistics(
                number: 453,
                name: AppStrings.orderEnded,
                onPressed: () {
                  context.push(RouterNames.managerFinishOrders);
                }),
            Container(
              color: AppColors.greyForSelectTap,
              width: 0.5.w,
              height: 99.h,
            ),
            CustomCardStatistics(
                number: 453,
                name: AppStrings.returnOrder,
                onPressed: () {
                  context.push(RouterNames.managerReturnedOrders);
                }),
            Container(
              color: AppColors.grey,
              width: 0.5.w,
              height: 99.h,
            ),
            CustomCardStatistics(
                number: 453, name: AppStrings.refusedOrder, onPressed: () {
              context.push(RouterNames.managerRefusedOrders);
                }),
          ],
        ),
      ),
    );
  }
}

class CustomCardStatistics extends StatelessWidget {
  const CustomCardStatistics({
    super.key,
    required this.number,
    required this.name,
    this.onPressed,
  });

  final int number;
  final String name;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(number.toString(),
                style: AppStyles.s12.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w700)),
            SizedBox(height: 5.h),
            Text(name,
                style: AppStyles.s10.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
