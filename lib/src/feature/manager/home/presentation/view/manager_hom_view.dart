import 'package:charlot/core/routes/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/router_names.dart';
import '../../../../sales/home/presentation/widgets/home_app_bar_widget.dart';

import '../components/newest_order_list_view.dart';
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
            ProgressCard(
              percentage: 70,
              title: "الطلبات التي تم الانتهاء منها",
              buttonText: "عرض الطلبات المكتملة",
              onTap: () {
                context.go(RouterNames.managerCompleatedOrders);
              },
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
