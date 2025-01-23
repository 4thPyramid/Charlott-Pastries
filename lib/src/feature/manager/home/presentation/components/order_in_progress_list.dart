import 'package:charlot/core/routes/router_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../widgets/order_in_progress_card.dart';

class OrdersInProgressList extends StatelessWidget {
  const OrdersInProgressList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return buildOrderCard(
              onTap: () {
                context.push(RouterNames.ordersDetails, extra: {
                  'from': "OrdersInProgressList",
                  'title': 'تفاصيل الطلب قيد الانتظار',
                });
              },
              color: AppColors.lightBlue,
              progressColor: AppColors.blue,
              orderName: "تورته عيد ميلاد دورين بالشيكولاته",
              orderType: "حلويات غربية",
              progress: 0.7,
            );
          },
        ));
  }
}
