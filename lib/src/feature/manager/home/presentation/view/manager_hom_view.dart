import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../components/inprogress_and_newest_order_container.dart';
import '../widgets/orders_statistics_row.dart';
import '../widgets/progress_circle.dart';

class ManagerHomView extends StatelessWidget {
  const ManagerHomView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: AppColors.primaryColor,
      //  padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70.h),
          const Align(
            alignment: Alignment.center,
            child: ProgressCircle(
              percentage: 70,
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: const OrdersStatisticsRow(),
          ),
          SizedBox(height: 45.h),
          const InProgressAndNewestOrderContainer()
        ],
      ),
    ));
  }
}