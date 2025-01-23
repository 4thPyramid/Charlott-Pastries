import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../sales/home/presentation/widgets/home_app_bar_widget.dart';

import '../../../newest_orders/presentation/views/newest_order_list_view.dart';
import '../components/order_in_progress_list.dart';
import '../widgets/custom_title.dart';
import '../widgets/progress_circle.dart';

class ManagerHomView extends StatelessWidget {
  const ManagerHomView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          color: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70.h),
        Align(
          alignment: Alignment.center,
          child: const ProgressCircle(
                percentage: 70,
              ),
        ),
          SizedBox(height: 20.h),
         
          SizedBox(height: 20.h),
          const CustomTitle(
            title: "طلبات قيد التنفيذ",
          ),
          SizedBox(height: 20.h),
          const OrdersInProgressList(),
          SizedBox(height: 20.h),
          const CustomTitle(title: "طلبات جديده"),
          SizedBox(height: 20.h),
          const NewestOrderListView()
        ],
      ),
    ));
  }
}
