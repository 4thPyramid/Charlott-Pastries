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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCardStatistics(
                number: 453,
                name: AppStrings.orderCompleted,
                onPressed: () {
                  context.push(RouterNames.managerCompletedOrders);
                }),
                  CustomCardStatistics(
                number: 453,
                name: AppStrings.orderEnded,
                onPressed: () {
                  context.push(RouterNames.managerFinishOrders);
                }),
            CustomCardStatistics(
                number: 453,
                name: AppStrings.returnOrder,
                onPressed: () {
                  context.push(RouterNames.managerReturnedOrders);
                }),
            
          ],
        ),
       Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                           CustomCardStatistics(
                  number: 453,
                  name: AppStrings.refusedOrder,
                  onPressed: () {
                    context.push(RouterNames.managerRefusedOrders);
                  }),
                  CustomCardStatistics(
                  number: 453,
                  name: AppStrings.orderBeingDeliver,
                  onPressed: () {
                    context.push( RouterNames.managerBeingDeliveredOrdersView,);
                  }),
            ],
        
        )
      ],
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
    return Card(
      color: const Color.fromARGB(255, 193, 171, 171).withAlpha(70),
      margin: EdgeInsets.all(10.w),
      elevation: 0,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 24.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}
