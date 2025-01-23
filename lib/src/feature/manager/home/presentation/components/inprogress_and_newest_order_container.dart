

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../newest_orders/presentation/views/newest_order_list_view.dart';
import '../widgets/custom_title.dart';
import 'order_in_progress_list.dart';

class InProgressAndNewestOrderContainer extends StatelessWidget {
  const InProgressAndNewestOrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
    );
  }
}
