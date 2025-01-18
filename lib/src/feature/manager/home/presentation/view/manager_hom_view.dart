import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../sales/home/presentation/widgets/home_app_bar_widget.dart';

import '../../../newest_orders/presentation/views/newest_order_list_view.dart';
import '../components/order_in_progress_list.dart';
import '../widgets/custom_title.dart';
import '../widgets/progress_card.dart';

class ManagerHomView extends StatelessWidget {
  const ManagerHomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
            const HomeAppBar(),
            SizedBox(height: 20.h),
            const ProgressCard(
              percentage: 70,
              title: "الطلبات التي تم الانتهاء منها",
            ),
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
      ),
    ));
  }
}
