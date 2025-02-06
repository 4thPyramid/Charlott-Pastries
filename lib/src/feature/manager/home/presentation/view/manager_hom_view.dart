import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../components/inprogress_and_newest_order_container.dart';
import '../components/orders_statistics_row.dart';

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